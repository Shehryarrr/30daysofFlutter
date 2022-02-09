import 'package:flutter/material.dart';
import 'package:flutter_catlog/pages/home_page.dart';
import 'package:flutter_catlog/pages/login_page.dart';
import 'package:flutter_catlog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
        themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme:GoogleFonts.latoTextTheme()),

         darkTheme: ThemeData(
           brightness: Brightness.light,
         primarySwatch: Colors.deepOrange,
        ), 
        // initialRoute: "/",
       routes: {
         "/": ((context) => const LoginPage()),
         MyRoutes.homeRoute: ((context) => const HomePage()),
         MyRoutes.loginRoute: ((context) => const LoginPage())

       },
    );
  }
}