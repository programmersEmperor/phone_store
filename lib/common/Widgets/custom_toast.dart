import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';

void showCustomToast({
  required String msg,
  bool success = false,
  AlignmentGeometry alignment = Alignment.topCenter,
}) {
  SmartDialog.showToast(msg,
      maskColor: success ? Colors.green : Colors.red,
      animationType: SmartAnimationType.fade,
      displayTime: 5.seconds,
      alignment: alignment, builder: (context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 0,
          color: success
              ? Colors.green.withOpacity(0.9)
              : Colors.red.withOpacity(0.9),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              msg,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  });
}
