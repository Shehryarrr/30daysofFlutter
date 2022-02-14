import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: UserAccountsDrawerHeader(accountName: Text("Muhammad Shehryar"), accountEmail: Text("shehryarshk@gmail.com")))
        ],
      ),
      
    );
  }
}