// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxdemo/controller/api/todocontroller.dart';

class todolist extends StatelessWidget {
  const todolist({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController();
    Todocontroller todoController = Get.put(Todocontroller());
    Todocontroller todocontroller = Get.put(Todocontroller());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('demo page'),
        backgroundColor: const Color.fromARGB(255, 183, 58, 75),
      ),
      bottomNavigationBar: Container(
        width: 300,
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Enter New Task",
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: text,
                              decoration: InputDecoration(
                                hintText: "Enter task",
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text("cancel"),
                            ),
                          ),
                          SizedBox(width: 30),
                          Expanded(
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  todocontroller.posttodo(text.text);
                                  Get.back();
                                  text.clear();
                                },
                                child: Text("save"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Add New", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        color: const Color.fromARGB(255, 249, 249, 249),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "All todos",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, i) {
                    return Obx(
                      () => Column(
                        children:
                            todoController.TodoList.map(
                              (e) => Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.add_circle,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                              SizedBox(width: 10),
                                              Text(
                                                e.title.toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  backgroundColor: Colors.white,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 250,
                                                ),
                                                child: IconButton(
                                                  onPressed: () {
                                                    todocontroller.deleteTodo(
                                                      e.id,
                                                    );
                                                  },
                                                  icon: Icon(
                                                    Icons.delete,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ).toList(),
                      ),
                    );
                  },
                  itemCount: 1,
                ),
              ),
            ],
          ),
        ),
        color: const Color.fromARGB(255, 247, 247, 247),
      ),
    );
  }
}
