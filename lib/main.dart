import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdemo/Utils/route.dart';
import 'package:getxdemo/Utils/todolist.dart';

void main() async {
  runApp(const TaskBuddyApp());
}

class TaskBuddyApp extends StatelessWidget {
  const TaskBuddyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      getPages: Allpages,
      home: todolist(), // directly call HomePage
    );
  }
}
