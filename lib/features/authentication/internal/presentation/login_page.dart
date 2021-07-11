import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/assets.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/widgets/common.dart';

import 'login_controller.dart';

/// The login page
class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Wrap(
                  runSpacing: 20.0,
                  children: [
                    Center(
                        child: Image.asset(
                      AppAsset.splashLogo,
                      width: 200,
                      height: 200,
                    )),
                    Center(
                        child: ConstrainedBox(
                            constraints: const BoxConstraints(
                                maxHeight: 200, maxWidth: 300),
                            child: Text(
                              AppStrings.translate(
                                  message: AppStrings.termsOfUseLoginScreen),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                      child: OutlinedButton.icon(
                          icon: const Icon(Icons.facebook_rounded),
                          onPressed: controller.onFacebookLoginPressed,
                          label: makeTextWithConstraints(
                            text: AppStrings.translate(
                                message: AppStrings.loginWithFacebook),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Center(
                      child: OutlinedButton.icon(
                          icon: const Icon(
                            Icons.mail_rounded,
                          ),
                          onPressed: controller.onGmailLoginPressed,
                          label: makeTextWithConstraints(
                            text: AppStrings.translate(
                                message: AppStrings.loginWithGmail),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    Center(
                      child: OutlinedButton.icon(
                          icon: const Icon(Icons.sms_rounded),
                          onPressed: controller.onPhoneLoginPressed,
                          label: makeTextWithConstraints(
                              text: AppStrings.translate(
                                  message: AppStrings.loginWithPhone),
                              textAlign: TextAlign.center)),
                    ),
                  ],
                ))));
  }
}
