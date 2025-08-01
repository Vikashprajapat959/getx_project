import 'dart:convert';
import 'package:get/get.dart';
import 'package:getxdemo/module/todomodule.dart';
import "package:http/http.dart" as http;

class Todocontroller extends GetxController{
var TodoList = RxList<Todomodel>();


@override
  void onInit(){
    super.onInit();
    getTodos();
  }

//get todo
Future<RxList < Todomodel>> getTodos() async{
  final response = await http.get(Uri.parse("https://687cee2d918b642243307bba.mockapi.io/api/todolist"));
  var data = jsonDecode(response.body.toString());
  if(response.statusCode==200){
    for(Map<String,dynamic> index in data){
      TodoList.add(Todomodel.fromJson(index));
    }
    return TodoList;
  }else{
    return TodoList;
  }
}

//post todo
Future <void> posttodo(title) async{
  final response = await http.post(Uri.parse("https://687cee2d918b642243307bba.mockapi.io/api/todolist"),
   headers: {'Content-Type': 'application/json'},
   body: json.encode({"title":title}),
  );
  if(response.statusCode == 201){
    print("done");
    TodoList.clear();
    getTodos();
  }else{
    print("faild");
  }
}

//delete todo
Future <void> deleteTodo(id) async{
  final response = await http.delete(Uri.parse("https://687cee2d918b642243307bba.mockapi.io/api/todolist/$id"),
  );
  if(response.statusCode == 200){
    print("done");
    TodoList.clear();
    getTodos();
  }else{
    print("faild");
  }
}

}