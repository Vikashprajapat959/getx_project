import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customSnackBar() {
  Get.snackbar(
    "vikash",
    "vikash",
    snackPosition: SnackPosition.TOP,
    backgroundColor: const Color.fromARGB(255, 254, 254, 254),
    animationDuration: Duration(seconds: 3),
    duration: Duration(seconds: 10),
    icon: Icon(Icons.notifications, size: 30, color: Colors.white),
    dismissDirection: DismissDirection.horizontal,
  );
}
