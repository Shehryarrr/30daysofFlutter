import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Enter user name",
                    labelText: "User name",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  // ignore: prefer_const_constructors
                  child: Text("Login"),
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    // ignore: avoid_print
                    print("Hello To my Home Page");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
