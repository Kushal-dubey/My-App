import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {   // in this buid we will be building our UI interface
  
    return MaterialApp(    
      home: Material(  //constructor of material
         child: Center(      //Then inside center constructor it is the text cintainer and also child is also defined as the constructor
          child: Text("Welcome to My Channel"),
        ),
),
    );
  }
}