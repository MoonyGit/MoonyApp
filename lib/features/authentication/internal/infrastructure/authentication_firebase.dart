import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User, PhoneCodeSent;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

import './firebase_user_mapper.dart';
import 'authentication_data_source.dart';

/// Firebase authentication data source
class FirebaseAuthFacade implements AuthDataSource {
  /// Constructor
  FirebaseAuthFacade(
      this._firebaseAuth, this._googleSignIn, this._facebookSignIn);

  static const String _errorEmailAlreadyInUse = 'email-already-in-use';
  static const String _errorWrongPassword = 'wrong-password';
  static const String _errorUserNotFound = 'user-not-found';

  // static const String _errorInvalidPhoneNumber = 'invalid-phone-number';
  static const String _errorExpiredPhoneOtp = 'session-exired';
  static const Duration _phoneVerificationTimeoutInSeconds =
      Duration(seconds: 20);

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FacebookAuth _facebookSignIn;

  String? _phoneVerificationId;
  PhoneAuthCredential? _phoneAutoRetrieveCredential;

  final StreamController<VerifyPhoneStateDataSourceEvent>
      _phoneAuthenticationState =
      BehaviorSubject<VerifyPhoneStateDataSourceEvent>();

  /// No need local storage as firebase handle the persistance
  @override
  Future<AuthUserDataSourceModel?> getSignedInUser() async =>
      _firebaseAuth.currentUser?.toDataSource();

  @override
  Stream<AuthUserDataSourceModel?> getUserAuthStateChanges() {
    return _firebaseAuth
        .authStateChanges()
        .map((User? user) => user?.toDataSource());
  }

  @override
  Stream<VerifyPhoneStateDataSourceEvent> getPhoneNumberAuthenticationState() {
    return _phoneAuthenticationState.stream;
  }

  @override
  void signInWithPhoneNumber({required String phoneNumber}) {
    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // await _firebaseAuth.signInWithCredential(credential);
        _phoneAutoRetrieveCredential = credential;
        _phoneAuthenticationState.add(VerifyPhoneStateDataSourceEvent.autoLogin(
            smsCode: credential.smsCode!));
      },
      timeout: _phoneVerificationTimeoutInSeconds,
      verificationFailed: (FirebaseAuthException e) {
        _phoneAuthenticationState
            .add(VerifyPhoneStateDataSourceEvent.error(message: e.message));
      },
      codeSent: (String verificationId, int? resendToken) {
        _phoneVerificationId = verificationId;
        _phoneAuthenticationState
            .add(const VerifyPhoneStateDataSourceEvent.otpSent());
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      verifyPhoneOtp({required String code}) async {

    PhoneAuthCredential credential;
    if (_phoneVerificationId != null) {
      credential = PhoneAuthProvider.credential(
          verificationId: _phoneVerificationId!, smsCode: code);
    } else if (_phoneAutoRetrieveCredential != null) {
      credential = _phoneAutoRetrieveCredential!;
    } else {
      return left(const AuthFailureDataSourceEvent.otpExpired());
    }

    return _firebaseAuth
        .signInWithCredential(credential)
        .then((UserCredential value) => right(value.user!.toDataSource()),
            onError: (dynamic error, dynamic stackTrace) {
      if (error is FirebaseAuthException) {
        switch (error.code) {
          case _errorExpiredPhoneOtp:
            return left(
                AuthFailureDataSourceEvent.otpExpired(message: error.message));
          default:
            return left(
                AuthFailureDataSourceEvent.badOtp(message: error.message));
        }
      } else {
        return left(const AuthFailureDataSourceEvent.unknown());
      }
    });
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    return _firebaseAuth
        .createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
    )
        .then((UserCredential value) => right(value.user!.toDataSource()),
            onError: (dynamic error, dynamic stackTrace) {
      if (error is FirebaseAuthException) {
        switch (error.code) {
          case _errorEmailAlreadyInUse:
            return left(AuthFailureDataSourceEvent.credentialsAlreadyUsed(
                message: error.message));
          default:
            left(AuthFailureDataSourceEvent.badCredentials(
                message: error.message));
        }
      } else {
        return left(const AuthFailureDataSourceEvent.unknown());
      }
    });
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    // try {
    return _firebaseAuth
        .signInWithEmailAndPassword(
      email: emailAddress,
      password: password,
    )
        .then((UserCredential value) => right(value.user!.toDataSource()),
            onError: (dynamic error, dynamic stackTrace) {
      if (error is FirebaseAuthException) {
        switch (error.code) {
          case _errorWrongPassword:
          case _errorUserNotFound:
            return left(AuthFailureDataSourceEvent.badCredentials(
                message: error.message));
          default:
            left(AuthFailureDataSourceEvent.badCredentials(
                message: error.message));
        }
      } else {
        return left(const AuthFailureDataSourceEvent.unknown());
      }
    });
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithGoogle() async {
    // try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuthentication =
          await googleUser.authentication;

      final OAuthCredential authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((UserCredential value) => right(value.user!.toDataSource()),
              onError: (dynamic error, dynamic stackTrace) {
        if (error is FirebaseAuthException) {
          switch (error.code) {
            default:
              left(AuthFailureDataSourceEvent.badCredentials(
                  message: error.message));
          }
        } else {
          return left(const AuthFailureDataSourceEvent.unknown());
        }
      });
    } else {
      return left(const AuthFailureDataSourceEvent.cancelled());
    }
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithFacebook() {
    // TODO: implement signInWithFacebook
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailureDataSourceEvent, AuthUserDataSourceModel>>
      signInWithApple() {
    // TODO: implement signInWithApple
    // SignInWithApple.getKeychainCredential();
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
        _facebookSignIn.logOut(),
        //TODO: signout with apple
      ]);
}
