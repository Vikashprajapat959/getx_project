import 'package:get/get.dart';
import 'package:getxdemo/Aboute.dart';
import 'package:getxdemo/Utils/todolist.dart';
import 'package:getxdemo/home.dart';

var Allpages = [
   
        GetPage(name: "/", page: () => HomePage(),
        transition: Transition.leftToRight
        ),
         GetPage(name: "/about", page: () => About(),
         transition: Transition.leftToRight
         ),
          GetPage(name: "/todo", page: () => todolist(),
          transition: Transition.leftToRight
          ),
];