import 'package:coffee_shop/Properities/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:coffee_shop/Properities/Classes.dart';


final TextEditingController regemailController = new TextEditingController();
final TextEditingController addresstController = new TextEditingController();
final TextEditingController firstnameController = new TextEditingController();
final TextEditingController lastnameController = new TextEditingController();



class RegistrationScreen extends StatelessWidget {
  static String routeName = 'RegistrationScreen';

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
                        txt: "Register",
                        color: nodeColor,
                        fontSize: 40,
                      ),
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: TextFormField(
                          controller: firstnameController,
                          style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(color: Colors.black),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: nodeColor,
                            labelText: "First Name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)),
                        child: TextFormField(
                          controller: lastnameController,
                          style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(color: Colors.black),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: nodeColor,
                            labelText: "Last Name",
                
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        
                        child: TextFormField(
                          controller: regemailController,
                           autovalidateMode: AutovalidateMode.onUserInteraction,
                            validator: (emailController) => emailController!.isValidEmail() ? null : "Check your email",
                          
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
                      
                      Password(),
                      
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100)),
                        child: TextFormField(
                          controller: addresstController,
                          style: GoogleFonts.dancingScript(
                              textStyle: TextStyle(color: Colors.black),
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: nodeColor,
                            labelText: "Address",
                            prefixIcon: Icon(Icons.location_on),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      
                          Container(
                            child: GenderPickerWithImage(
                            showOtherGender: false,
                            verticalAlignedText: false,
                            selectedGender: Gender.Male,
                            selectedGenderTextStyle: TextStyle(
                            color: nodeColor, fontWeight: FontWeight.bold),
                            unSelectedGenderTextStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal),
                            onChanged: (Gender) {},
                            equallyAligned: true,
                            animationDuration: Duration(milliseconds: 300),
                            isCircular: true,
                            opacityOfGradient: 0.4,
                            padding: const EdgeInsets.all(3),
                            size: 50, //default : 40
                            )
                          ),
                          Container(
                          height: 30,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Mybutton(txt:"Sign Up", snackTXT: "Signed Up Successfully",),),
                    ]))));
  }
}



