import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  final int days = 30;
  final String name = "Kushal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // in the scaffold the center is a task in body widget;
      //function as Scaffold
      body: Center(
        //container in child function
        child: Container(
          // center in child function
          child: Text("Welcome To my $days days channel dear $name "),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
      ), //use tomake the side panel of menu
      appBar: AppBar(
        //app bar is used to make the bar
        title: Text(
          "IRCTC",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
    );
  }
}
