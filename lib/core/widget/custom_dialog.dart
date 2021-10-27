import 'package:ecert/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'google_loading.dart';

class CustomDialog {
  CustomDialog._();

  static void showLoading() {
    Get.dialog(
      Material(
        color: Colors.transparent,
        child: Align(
          child: Container(
            height: 96,
            width: 96,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: GoogleLoading(radius: 32),
          ),
        ),
      ),
    );
  }

  static void showWarning(String text) {
    Get.dialog(
      Material(
        color: Colors.transparent,
        child: Align(
          child: Container(
            height: 232,
            width: 280,
            padding: EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  "Cảnh báo",
                  style: Get.theme.textTheme.headline3?.copyWith(
                    color: CustomTheme.lightColorScheme.error,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(text),
                  ),
                ),
                ElevatedButton(
                  onPressed: Get.back,
                  child: Text("Tôi đã hiểu"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
