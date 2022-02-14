import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://loveshayariimages.in/wp-content/uploads/2020/09/Sad-Alone-Boy-Images-104.jpg";
    return Drawer(backgroundColor: Colors.deepPurple,
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Muhammad Shehryar",style: TextStyle(color: Colors.white,fontSize: 20),),
              accountEmail: Text("shehryarshk@gmail.com",style: TextStyle(color: Colors.white,fontSize: 17)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
        
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(CupertinoIcons.house_fill, color: Colors.white,
            ),
            title: Text("Home",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white,),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.person_crop_square_fill, color: Colors.white,
            ),
            title: Text("Profile",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white,),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail_solid, color: Colors.white,
            ),
            title: Text("E-Mail",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white,),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.lock_shield_fill, color: Colors.white,
            ),
            title: Text("Privacy",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white,),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings, color: Colors.white,
            ),
            title: Text("Setting",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white,),
          ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.chevron_left_circle_fill, color: Colors.white,
            ),
            title: Text("Logout",textScaleFactor: 1.2,
            style: TextStyle(color: Colors.white,),
          ),
          ),
        ],
          
      ),
    );
  }
}
