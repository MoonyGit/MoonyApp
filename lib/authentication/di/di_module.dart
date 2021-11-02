import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source.dart';
import 'package:moony_app/authentication/data/remote/authentication_data_source_impl.dart';
import 'package:moony_app/authentication/data/repository/authentication_repository_impl.dart';

/// Load global dependencies
///
/// theses dependencies here will remain in memory during the whole application
/// lifecycle
/// if possible, prefer add dependencies in page bindings (scoped to page)
/// include only data source as global dependencies if needed
void loadModule() {
  // Auth
  Get.lazyPut<GoogleSignIn>(() => GoogleSignIn(), fenix: true);
  Get.lazyPut<FacebookAuth>(() => FacebookAuth.instance, fenix: true);
  Get.lazyPut<FirebaseAuth>(() => FirebaseAuth.instance, fenix: true);
  Get.lazyPut<AuthDataSource>(
      () => AuthDataSourceImpl(
            Get.find(),
            Get.find(),
            Get.find(),
          ),
      fenix: true);

  Get.lazyPut<AuthenticationRepositoryImpl>(
      () => AuthenticationRepositoryImpl(Get.find()),
      fenix: true);
}
