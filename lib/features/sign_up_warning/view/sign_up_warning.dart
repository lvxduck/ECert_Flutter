import 'package:ecert/core/widget/card_setup_wrapper.dart';
import 'package:ecert/features/sign_up_warning/controller/sign_up_warning_controller.dart';
import 'package:ecert/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpWarning extends StatelessWidget {
  SignUpWarning({Key? key}) : super(key: key);
  final SignUpWarningController _controller = Get.put(SignUpWarningController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CardSetupWrapper(
        child: Column(
          children: [
            const SizedBox(height: 36),
            Text(
              "Đăng kí",
              style: Get.theme.textTheme.headline3,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 18),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _controller.moveToHome,
                child: const Text("Đăng kí"),
              ),
            ),
            const SizedBox(height: 16),
            const SizedBox(height: 64),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Bằng cách tiếp tục, bạn đồng ý với các ",
                  style: TextStyle(fontSize: 11),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    print("tap tap 2");
                  },
                  child: Text(
                    "Điều khoản và Điều kiện",
                    style: TextStyle(
                      fontSize: 11,
                      color: CustomTheme.lightColorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
