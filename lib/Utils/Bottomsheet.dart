import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customBottomsheet (){
     Get.bottomSheet(Container(
                  height:
                  200,
                  width: 600,
                  color: Colors.white,
                  child: Column(children: [Text("important getx")],),
                ),
                );
}