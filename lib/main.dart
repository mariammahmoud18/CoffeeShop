import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffee_shop/Screens/LoginScreen.dart';
import 'package:coffee_shop/Screens/RegistrationScreen.dart';
import 'package:coffee_shop/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'Screens/DetailsScreen.dart';
import 'Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
      LoginScreen.routeName:(context)=>LoginScreen(),
      RegistrationScreen.routeName:(context)=>RegistrationScreen(),
      HomeScreen.routeName:(context)=>HomeScreen(),
      
      DetailsScreen.routeName:(context)=>DetailsScreen(),

      },
      home: SplashScreen()
    );
  }
}

