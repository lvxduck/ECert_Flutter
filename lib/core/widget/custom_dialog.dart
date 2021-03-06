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
            padding: const EdgeInsets.all(28),
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
                  child: const Text("Tôi đã hiểu"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static Future showModal({required double width, required double height, required Widget child}) {
    return Get.dialog(
      Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: Get.back,
          child: Align(
            child: InkWell(
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {},
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }

  static void showAlertDialog(String title, String content, {VoidCallback? onClose}) {
    Get.dialog(
      AlertDialog(
        title: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        contentPadding: const EdgeInsets.only(left: 18, right: 18, top: 12),
        titlePadding: const EdgeInsets.only(left: 18, right: 18, top: 18),
        buttonPadding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        content: Text(content),
        actions: <Widget>[
          Align(
            child: ElevatedButton(
              onPressed: onClose ?? Get.back,
              child: const Text(
                "Đóng",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showConfirmDialog({required String title, required String content, required void Function() onConfirm}) {
    Get.dialog(
      AlertDialog(
        title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        contentPadding: const EdgeInsets.only(left: 18, right: 18, top: 12),
        titlePadding: const EdgeInsets.only(left: 18, right: 18, top: 18),
        buttonPadding: const EdgeInsets.only(left: 18, right: 18, bottom: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        content: Text(content, style: const TextStyle(fontSize: 16)),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ElevatedButton(
                  onPressed: Get.back,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[300],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: Text(
                    "Hủy",
                    style: TextStyle(
                      fontSize: 16,
                      color: CustomTheme.lightColorScheme.primary,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: ElevatedButton(
                  onPressed: onConfirm,
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  child: const Text(
                    "Đồng ý",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
