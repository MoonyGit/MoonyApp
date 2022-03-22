import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'common.dart';

/// The base class of set widgets
abstract class SetInfoBaseWidget<C extends GetxController> extends GetView<C> {
  /// To override abstract getFormKey
  GlobalKey<FormState>? getFormKey() {
    return null;
  }

  /// To override abstract getPageIconHint
  IconData getPageIconHint();

  /// To override abstract getPageTextHint
  String getPageTextHint();

  /// To override abstract getWidgets
  List<Widget> getWidgets(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: getFormKey(),
      child: Column(children: [
        Icon(
          getPageIconHint(),
          size: 25,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        makeRoundedTextWithMoonyGradient(
            context: context,
            text: AppStrings.translate(message: getPageTextHint()),),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: getWidgets(context),
          ),
        ),
      ]),
    );
  }
}

/// The base class of set widgets
abstract class SetInfoModalBasePage<C extends GetxController>
    extends SetInfoBaseWidget<C> {
  /// To override abstract getNextButtonText
  String getNextButtonText();

  /// To override abstract getNextButtonCallback
  void Function() getNextButtonCallback();

  /// To override abstract getNextButtonCallback
  bool hasNextButtonCallback() => RxBool(true).value;

  /// To override abstract showAppBarBackButton
  bool showAppBarBackButton() => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading:
            showAppBarBackButton() ? const Icon(Icons.arrow_back_ios) : null,
      ),
      body: Center(
        child: Form(
          key: getFormKey(),
          child: Column(children: [
            Icon(
              getPageIconHint(),
              size: 25,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            makeRoundedTextWithMoonyGradient(
                context: context,
                text: AppStrings.translate(message: getPageTextHint())),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: getWidgets(context),
              ),
            ),
            const Spacer(),
            getMoonyImage(),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            Obx(() => OutlinedButton(
                  onPressed:
                      hasNextButtonCallback() ? getNextButtonCallback() : null,
                  child: makeWidgetWithConstraints(
                      child: Text(
                    AppStrings.translate(message: getNextButtonText()),
                    textAlign: TextAlign.center,
                  )),
                )),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
          ]),
        ),
      ),
    );
  }
}
