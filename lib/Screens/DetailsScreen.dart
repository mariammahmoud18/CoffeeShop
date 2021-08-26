
import 'dart:js';

import 'package:coffee_shop/Properities/Building%20functions.dart';
import 'package:coffee_shop/Properities/Classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/Properities/Constants.dart';
import 'package:coffee_shop/Properities/Products.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsScreen extends StatelessWidget
{
  
  static String routeName='DetailsScreen';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context)!.settings.arguments;
    int index=int.parse(productID.toString());
   return SafeArea(
     child: Scaffold(
     appBar: buildAppBar(title: '${products[index].productName} Details'),
       backgroundColor:darkPink,
      body: Center(
        child: Column(children: [
         displayProductDetails(ID: index),

          Row(
             mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              color: lightNodeColor,
          child: Text(
            "Purchase",
            style: GoogleFonts.dancingScript(
                textStyle: TextStyle(color: Colors.black),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
              onPressed: () {

                showDialog(
                    context: context,
                    builder: (BuildContext context) => leadDialog);
              },
           ),],



      
       
      ),

        ],)
       
      
      ),
     ),
     );

   
  }
}


Dialog leadDialog = Dialog(
  child: Container(
    height: 300.0,
    width: 360.0,
    color: Colors.white,
    
    child: Column(  
      mainAxisAlignment: MainAxisAlignment.center,
       children:  <Widget> [ 
         BuildingAtext(txt: "Payment",color: lightNodeColor,fontSize: 50,),
         Container(
           padding: EdgeInsets.all(10.0),
           
           child : TextFormField(
              style: GoogleFonts.dancingScript(textStyle: TextStyle(color: Colors.black),fontSize: 25 ,fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled:true,
                fillColor: nodeColor,
                labelText: "Credit Number",
                prefixIcon: Icon(Icons.credit_card),
                border: OutlineInputBorder(),
              ),
            ),) ,

            Container(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
              style: GoogleFonts.dancingScript(textStyle: TextStyle(color: Colors.black),fontSize: 25 ,fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                filled:true,
                fillColor: nodeColor,
                labelText: "Expiration Date",
                border: OutlineInputBorder(),
              ),
            ),),

            Container(
                          height: 50,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Mybutton(txt:"Pay", snackTXT: "Purchase Done Successfully",),),
       ],
           
    ), 
  ),
    );
 
 
