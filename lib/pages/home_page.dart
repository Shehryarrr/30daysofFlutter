import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/widgets/drawer.dart';
import 'package:flutter_catlog/widgets/item_widget.dart';   

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Dart";

  @override
  Widget build(BuildContext context) {
     final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        
        title:const Text("Catalog App"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
          itemCount:dummyList.length,
          itemBuilder: (context , index){
           return ItemWidget( item:  dummyList[index],); 
          },
        ),
      ),
      
      drawer: const MyDrawer(),
    );
  }
}
