import 'package:ecert/features/setup/controller/setup_controller.dart';
import 'package:ecert/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setup extends StatelessWidget {
  final SetupController controller = Get.put(SetupController());

  Setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Align(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ECert setup",
                style: Get.theme.textTheme.headline3,
              ),
              Text(
                "Import an existing account or create a new one",
                style: Get.theme.textTheme.bodyText1,
              ),
              const SizedBox(height: 124),
              ElevatedButton(
                onPressed: controller.loginWithPrivateKey,
                child: Text(
                  "Login with privateKey",
                  style: Get.textTheme.button?.copyWith(
                    color: CustomTheme.lightColorScheme.primary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: controller.continueWithoutLogin,
                child: Text(
                  "Continue without login",
                  style: Get.textTheme.button?.copyWith(
                    color: CustomTheme.lightColorScheme.primary,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 14),
              ElevatedButton(
                onPressed: controller.createNewAccount,
                child: const Text("Create a new account"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
