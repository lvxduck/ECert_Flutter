import 'package:ecert/features/login/view/login.dart';
import 'package:ecert/features/viewer/views/viewer.dart';
import 'package:get/get.dart';

class SetupController extends GetxController {
  void loginWithPrivateKey() {
    Get.to(() => Login());
  }

  void continueWithoutLogin() {
    Get.to(() => Viewer());
  }

  void createNewAccount() {}
}
