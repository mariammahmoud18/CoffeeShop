
import 'package:coffee_shop/Properities/Building%20functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget
{
  static String routeName='DetailsScreen';
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
     appBar: buildAppBar(title: 'Details'),
       
     )
   );
  }
}
