import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_application_1/utils/Routes.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // it is to used to make the scroll view of different phones
        child: Column(
          children: [
            Image.asset(
              "assets/images/Login_image.png", //location in the column children and the image.assets
              fit: BoxFit.cover,
              height: 400,

              // it is the property basically to fit the image
            ),

            // it is used to make the perfect size between image and welcome

            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),

            //padding is used in it to wrap the column elements and make username and password
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0), //this is the symmetric padding
              child: Column(
                children: [
                  TextFormField(
                    //used to form the buttons like username and password
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true, //used to secure and hode the password
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),

                  //buttons
                  SizedBox(
                    height: 40.0,
                  ),
// Elevated Button for login
                  ElevatedButton(
                    onPressed: () {
                   Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    //onpressed is the function in which button is been operated
// Button designed for login
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),

                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 13, 54, 87),
                        minimumSize: Size(150, 60)),
                  ), //used to make button
                ],
              ),
            ),
          ],
        ),
      ),
      // this is the new widget called image assets in the children column
    );
  }
}

/*
 This is to make the login page by adding drawer as wel as appbar and to make it more attractive
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
      ),*/
