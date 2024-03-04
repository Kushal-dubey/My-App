import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Text(
          'Login Page',
          style: TextStyle(
              color: Colors.cyan, fontSize: 45, fontWeight: FontWeight.bold),
        ),
      )),
      drawer: Drawer(
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        title: Text(
          "LOGIN",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
