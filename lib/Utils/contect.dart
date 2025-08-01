import 'package:flutter/material.dart';

class Contect extends StatelessWidget{
  Contect ({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(child: Center(child: Text("Contect us page",style: TextStyle(fontSize: 30),),
      ),
      ),
    );
  }
}