import "package:flutter/cupertino.dart";
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
  bool changeButton = false;
  final _formKey = GlobalKey<
      FormState>(); // form key genarally not sending blank data on next page

      // method calling the blank not going to not page
      moveToHome(BuildContext context)async{
        if(_formKey.currentState!= null ){     //methode to invoke and validate that empty buttons cannot be redirected to the next page
          if(_formKey.currentState!.validate()){
        setState(() {
    //command set state with on tap widget
     changeButton = true;
      });
  await Future.delayed(Duration(seconds: 1)); // after 1 seconds of clickig it will redirect us on the next page
                          // await navigation is been usedyo agian fix the button after animation into its original shapw
  await Navigator.pushNamed(context,MyRoutes.homeRoute,);
  setState(() {
                            // this set state is been used to again fix the button after animation and also get back into its original shape
                            //command set state with on tap widget
  changeButton = false;
      });
        }
        }
      }       //method to click only data is filled no the blank data is used
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        // it is to used to make the scroll view of different phones
        child: Form(
          //form is the parent of textformfields for usernme as well as for password
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/hey.png", //location in the column children and the image.assets
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
                    validator: (value) {
                  if (value == null || value.isEmpty) {
                   return "Username cannot be empty";
                  }
                   return null;
                  },

                      onChanged: (value) {
                        //valodation only in textform field
                        // it is been used to genrally add something in username as well with welcome
                        name = value;
                        setState(() {
                          //used to rebuild the ui in the case of stateful widget as well an also applied in case of stateful widget only.
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true, //used to secure and hide the password
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                         validator: (value) {
                if (value == null || value.isEmpty) {
                return "Password cannot be empty";
                   }
               else if (value.length<6) {
                return "Password length should be atleast 6";
                   }
                  },

                    ),

                    //buttons
                    SizedBox(
                      height: 40.0,
                    ),

                    // Elevated  Button for Login in an Animated Way
                    //Inkwell is been used for animation factors
                    Material(
                      color: Colors.deepPurple,
                      borderRadius: //border for onclicking the button
                          BorderRadius.circular(changeButton ? 50 : 8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton ? 50 : 150,
                          //changebutton? is the condition either true or false in case of animation
                          height: 50,
                          alignment: Alignment.center,
                          child:
                              changeButton //this is been used as an vbool function in stateful widget
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    ) //animation of done after clicking on login
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                          //decoration: BoxDecoration(   // decoration beyod the button
                          // shape:
                          // changeButton ? BoxShape.circle : BoxShape.rectangle,
                          //borderRadius:
                          //  BorderRadius.circular(changeButton ? 50 : 8),
                          //color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    //)

                    //
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // this is the new widget called image assets in the children column
    );
  }
}




// this is been used as container to make the login button attractive with animation on it.




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



//elevated button for login
                  /*    ElevatedButton(
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
                  ),*/
