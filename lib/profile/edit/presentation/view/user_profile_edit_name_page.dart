import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moony_app/common/resources/strings.dart';
import 'package:moony_app/common/resources/themes.dart';
import 'package:moony_app/profile/edit/presentation/controller/user_profile_edit_name_controller.dart';
import 'package:moony_app/profile/resources/strings.dart';

/// User edit profile information page
class UserProfileEditNamePage extends GetView<UserProfileEditNameController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[AppTheme.secondary, AppTheme.primary],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            userEditProfileNameHeader.translate(),
            style: const TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                userEditProfileFirstName.translate(),
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            Obx(
                  () => TextFormField(
                style: const TextStyle(
                  backgroundColor: Colors.white,
                ),
                cursorColor: Colors.black,
                controller: TextEditingController(
                  text: controller.userProfileEditName.value?.firstName,
                ),
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.check),
                  suffixIconColor: Colors.black,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
              child: Text(
                userEditProfileLastName.translate(),
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            Obx(
                  () => TextFormField(
                style: const TextStyle(
                  backgroundColor: Colors.white,
                ),
                cursorColor: Colors.black,
                controller: TextEditingController(
                  text: controller.userProfileEditName.value?.lastName,
                ),
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.check),
                  suffixIconColor: Colors.black,
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 32,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              style: TextButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                primary: Colors.red,
                shape: const RoundedRectangleBorder(),
                backgroundColor: Colors.white,
                textStyle: const TextStyle(color: Colors.red),
              ),
              child: Text(userEditProfileUpdate.translate().toUpperCase()),
            )
          ],
        ),
      ),
    );
  }
}
