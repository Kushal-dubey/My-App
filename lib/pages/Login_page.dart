import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_application_1/utils/Routes.dart";

//underscore in dart is being used to make things private in dart;
class LoginPage extends StatefulWidget {
  //stateful widget
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
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
              "Welcome $name", //name is been added for the stateful widget
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

                    // this is the concept of stateful widget not stateless;

                    onChanged: (value) {
                      // it is been used to genrally add something in username as well with welcome
                      name = value;
                      setState(() {
                        //used to rebuild the ui in the case of stateful widget as well an also applied in case of stateful widget only.
                      });
                    },
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

                  ElevatedButton(
                    onPressed: () async {
                      await Future.delayed(Duration(
                          seconds:
                              0)); // future delay how much tym it will redirect to homepage from loginpage
                      Navigator.pushNamed(
                        context,
                        MyRoutes.homeRoute,
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 13, 54, 87),
                      minimumSize: Size(150, 60),
                    ),
                  ),

// Elevated Button for login
                  /*  ElevatedButton(
                    onPressed: Async() {
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(
                          context,
                          MyRoutes
                              .homeRoute); //navigator is used to navigate through this myroute concpt and it is the static one so no need to change again and again only once modified.
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
                  ), */ //used to make button
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




// this is been used as container to make the login button attractive with animation on it.
 /*  InkWell(
                    //ink well is used to click on the button with the container in it with on tap command
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                  ), //container is used as the animation of the login button
                  Container(
                    width: 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)),
                  )*/



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
