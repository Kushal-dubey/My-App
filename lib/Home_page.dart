import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({super.key});
  final int days = 30;
  final String name = "Kushal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //function as Scaffold
      body: Center(
        //container in child function
        child: Container(
          // center in child function
          child: Text("Welcome To my $days days channel dear $name "),
        ),
      ),
      drawer: Drawer(),   //use tomake the side panel of menu
      appBar: AppBar(   //app bar is used to make the bar
        title: Text("IRCTC"),
      
      ),
    );
  }
}
