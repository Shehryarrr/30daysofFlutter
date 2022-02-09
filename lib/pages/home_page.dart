import 'package:flutter/material.dart';   

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Catalog App"),
      ),
      body: Center(
          child: Text('Welcome to $days days of Flutter $name', style:const  TextStyle(fontSize: 40,fontWeight:FontWeight.bold),),
      ),
      
      drawer: const Drawer(),
    );
  }
}
