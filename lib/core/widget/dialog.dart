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
}
