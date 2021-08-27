import 'package:coffee_shop/Properities/Classes.dart';
import 'package:coffee_shop/Properities/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'RegistrationScreen.dart';

final TextEditingController emailController = new TextEditingController();
final TextEditingController passwordController = new TextEditingController();

class LoginScreen extends StatelessWidget {
  static String routeName = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/Login.jpg"),
                        fit: BoxFit.cover)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildingAtext(
                        txt: "Welcome",
                        color: nodeColor,
                        fontSize: 70,
                      ),
                      BuildingAtext(
                        txt: "Login",
                        color: lightNodeColor,
                        fontSize: 50,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: TextFormField(
                          controller: emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (emailController) =>
                              emailController!.isValidEmail()
                                  ? null
                                  : "Check your email",
                          style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(color: Colors.black),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: nodeColor,
                            labelText: "Email Address",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: TextFormField(
                          controller: passwordController,
                          style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(color: Colors.black),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          obscureText: true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: nodeColor,
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: Icon(Icons.visibility),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Mybutton(
                        txt: "Login",
                        snackTXT: "Login Successfully",
                      ),
                      Container(
                          padding: EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              BuildingAtext(
                                  txt: "Does not have an Account ? ",
                                  color: lightNodeColor,
                                  fontSize: 25),
                              FlatButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, RegistrationScreen.routeName);
                                  },
                                  child: BuildingAtext(
                                    txt: "Sign Up",
                                    color: lightNodeColor,
                                    fontSize: 25,
                                  ))
                            ],
                          )),
                    ]))));
  }
}
