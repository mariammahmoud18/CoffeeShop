import 'package:coffee_shop/Properities/Products.dart';
import 'package:coffee_shop/Screens/DetailsScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Classes.dart';
import 'Constants.dart';
Widget displayProductsItems({required Products products, required BuildContext context}) {
  
  return GestureDetector(
    onTap: () {
      
      Navigator.pushNamed(context, DetailsScreen.routeName, arguments: products);
    },
    child: Container(
      
      height: 200,
      color: offWhiteColor,
      padding: EdgeInsets.all(10),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: products.productImage,fit: BoxFit.fitHeight,height: 70,width: 70),
           BuildingAtext(txt: products.productName,color:darkNodeColor,fontSize: 30),
           BuildingAtext(txt:" ${(products.productPrice).toString()} \$",color:darkNodeColor,fontSize: 30),
      
            SizedBox(height: 10,)

      ],)
      
    ),
  );
}

AppBar buildAppBar({required String title}) {
  return AppBar(
    title: Text(title),
    backgroundColor: darkNodeColor,
  );
}


