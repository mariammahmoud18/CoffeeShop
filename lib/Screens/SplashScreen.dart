
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffee_shop/Properities/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginScreen.dart';

class SplashScreen extends StatelessWidget {
  static String routeName='SplashScreen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
          body: AnimatedSplashScreen(
          duration: 3000,
          splash: "images/Coffee splash1.png",
          splashIconSize: 300,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: lightNodeColor,
          disableNavigation:false,
          nextScreen: LoginScreen(),
        )
        
    )
    );
  }
}
