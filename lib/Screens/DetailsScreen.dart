
import 'package:coffee_shop/Properities/Building%20functions.dart';
import 'package:coffee_shop/Properities/Classes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/Properities/Constants.dart';
import 'package:coffee_shop/Properities/Products.dart';

class DetailsScreen extends StatelessWidget
{
  static String routeName='DetailsScreen';
  @override
  Widget build(BuildContext context) {
    final idk = ModalRoute.of(context)!.settings.arguments;
    int index=int.parse(idk.toString());
   return SafeArea(
     child: Scaffold(
     appBar: buildAppBar(title: '${products[index].productName} Details'),
       backgroundColor:darkPink,
      body: Center(
      //child: displayProductDetails(Product: idk)
      
       
      ),
      ),
     );
   
  }
}

class displayProductDetails extends StatelessWidget {
final Products Product;
 displayProductDetails({required this.Product});
 Widget build(BuildContext context) {
   return Column(children: [
                        
      Image(image: Product.productImage,fit: BoxFit.fitHeight,height: 70,width: 70),
      BuildingAtext(txt: Product.productName,color:darkNodeColor,fontSize: 30),
      BuildingAtext(txt:" ${(Product.productPrice).toString()} \$",color:darkNodeColor,fontSize: 30),
      BuildingAtext(txt: Product.productDescription,color:darkNodeColor,fontSize: 30),
      

   ],);
 }

}
