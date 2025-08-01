import 'package:flutter/material.dart';
import 'package:get/get.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController textEditingController = TextEditingController();

  String name = "Ashish";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 251, 251, 252),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Name : ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              textEditingController.text = name;
                              Get.defaultDialog(
                                title: "Enter your name",
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextFormField(
                                      controller: textEditingController,
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        OutlinedButton(
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child: const Text('Cancel'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            String newName =
                                                textEditingController.text
                                                    .trim();
                                            if (newName.isNotEmpty) {
                                              setState(() {
                                                name = newName;
                                              });
                                              Get.back();
                                            } else {
                                              Get.snackbar(
                                                "Error",
                                                "name is not empty",
                                                snackPosition:
                                                    SnackPosition.BOTTOM,
                                                backgroundColor: Colors.red,
                                                colorText: Colors.white,
                                              );
                                            }
                                          },
                                          child: const Text('Save'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                            icon: const Icon(Icons.edit, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
