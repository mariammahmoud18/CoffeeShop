import 'package:coffee_shop/Properities/Building%20functions.dart';
import 'package:coffee_shop/Properities/Constants.dart';
import 'package:coffee_shop/Properities/Products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  static String routeName='HomeScreen';
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
       backgroundColor:darkPink,
      body: ListView.builder(
        addRepaintBoundaries : true,
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