import 'package:coffee_shop/Properities/Building%20functions.dart';
import 'package:coffee_shop/Properities/Constants.dart';
import 'package:coffee_shop/Properities/Products.dart';
import 'package:coffee_shop/widgets/google_sign_in_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: darkPink,
      appBar: AppBar(
        title: Text('Home',style: GoogleFonts.dancingScript(
            textStyle: TextStyle(color: offWhiteColor),
            fontSize: 35,
            fontWeight: FontWeight.bold),),
        backgroundColor: darkNodeColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(
                  context, "coffee_shop/Screens/user_info_screen.dart",
                  arguments: user2);
            },
          )
        ],
      ),
      body: ListView.builder(
          addRepaintBoundaries: true,
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return displayProductsItems(
                products: products[index], context: context);
          }),
    ));
  }
}
