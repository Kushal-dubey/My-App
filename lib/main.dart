import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Home_page.dart';
import 'package:flutter_application_1/pages/Login_page.dart';
import 'package:flutter_application_1/utils/Routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

bringvegetables({bool thaila = false, int rupees = 200}) {
  // it will display 50 because method is called 50 and if the metod in main class is empty so it will take the default value of it

  //{int rupees=200 ,bool thaila=false is a optional parameter}
  // Take bike
  // go to market
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bringvegetables(rupees: 50);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, //dark theme in thememode
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        //primaryTextTheme: GoogleFonts.latoTextTheme(),  // this is the primary text theme which have lato text theme in it
      ),
      //theme is used for data and primary swatch is used for body and widgets
      darkTheme: ThemeData(
        brightness: Brightness
            .dark, //brightness is the important part we can set it as dark or
      ),
      /*initialRoute:
          "/login",*/ //this is the by default route which will show us the homepage
      //routes
      routes: {
        "/": (context) =>
            LoginPage(), //this is the main branch and only that thing will be displayed either homepage or loginpage
        MyRoutes.homeRoute: (context) =>
            HomePage(), // route for home page will be displayed afterwards and it is the static coordination of myroutes to be displayed
        MyRoutes.loginRoute: (context) =>
            LoginPage(), //route for login page through the static coordination of login route
      },
      // home: HomePage(),  //used to simply display the homepage and it is an object simply
    );
  }
}
