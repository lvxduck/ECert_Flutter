import 'package:ecert/core/widget/dialog.dart';
import 'package:ecert/features/sign_up/view/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController privateKeyController = TextEditingController();

  @override
  void dispose() {
    privateKeyController.dispose();
    super.dispose();
  }

  void submit(GlobalKey<FormState> formKey) async {
    if (formKey.currentState!.validate()) {
      CustomDialog.showLoading();
      await Future.delayed(1.seconds);
      Get.back();
      // String privateKey = privateKeyController.text;
      // UserType userType = await AuthApi.signIn(privateKey);
      // switch (userType) {
      //   case UserType.issuer:
      //     Get.to(() => const Issuer());
      //     // Get.offAll(() => const Issuer());
      //     break;
      //   case UserType.viewer:
      //     Get.to(() => const Viewer());
      //     break;
      //   case UserType.verifier:
      //     Get.to(() => const Verifier());
      //     break;
      // }
    }
  }

  void moveToSignUp() {
    Get.to(() => SignUp());
  }

  String? privateKeyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Bạn chưa nhập privateKey';
    }
    if (!value.isSHA256) {
      return 'Bạn nhập sai định dạng';
    }
    return null;
  }
}
