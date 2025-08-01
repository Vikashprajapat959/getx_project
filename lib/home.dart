import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/Utils/Bottomsheet.dart';
import 'package:getxdemo/Utils/Dilogbox.dart';
import 'package:getxdemo/Utils/SnackBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Home Page!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                customSnackBar();
              },
              child: const Text('Bottom sheet'),
            ),
            ElevatedButton(
              onPressed: () {
               customDilogbox();
              },
              child: const Text('Click Me'),
            ),
             ElevatedButton(
              onPressed: () {
              customBottomsheet();
              },
              child: const Text('Bottom sheet'),
            ),
             ElevatedButton(
              onPressed: () {
               Get.toNamed("/about");
              },
              child: const Text('About page'),
            ),
             ElevatedButton(
              onPressed: () {
              Get.toNamed("/contect");
              },
              child: const Text('contect page'),
            ),
          ],
        ),
      ),
    );
  }
}
