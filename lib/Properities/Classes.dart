
import 'package:coffee_shop/Screens/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'Constants.dart';

class BuildingAtext extends StatelessWidget {
  final String txt;
  final Color color;
  final double fontSize;

  BuildingAtext({required this.txt ,required this.color, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(txt,
              style: GoogleFonts.dancingScript(textStyle: TextStyle(color: color),fontSize: fontSize ,fontWeight: FontWeight.bold),
              textAlign: TextAlign.start);
  }
}


class Mybutton extends StatelessWidget {
  final String txt;
  final String snackTXT;
  Mybutton({required this.txt,required this.snackTXT});

  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200.0,
      child: FlatButton(
        
          color: lightNodeColor,
          child: Text(
            txt,
            style: GoogleFonts.dancingScript(
                textStyle: TextStyle(color: Colors.black),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            final snack = SnackBar(
              content: Text(
                snackTXT,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.white),
              ),
              backgroundColor: nodeColor,
            );

            ScaffoldMessenger.of(context).showSnackBar(snack);
            Navigator.pushNamed(context, HomeScreen.routeName);
          }),
    );
  }
}


extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}