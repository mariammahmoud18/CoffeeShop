import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products {
  @required
  static int id=0;
  final AssetImage productImage;
  @required
  final String productName;
  final double productPrice;

  Products( this.productImage,  this.productName,  this.productPrice)
  {
     id++;
  }
}
List<Products> products = [
  Products( AssetImage("images/Basic coffee.jpg"), 'Basic coffee', 12),
  Products( AssetImage("images/Basic donuts.jpg"), 'Basic Donuts', 13),
  Products( AssetImage("images/cappuccino.jpg"),  'cappuccino',  17.5),
  Products( AssetImage("images/Chocolate donuts.jpg"),  'Chocolate Donuts',  15),
  Products( AssetImage("images/cookies.jpg"),  'Cookies',  12),
  Products( AssetImage("images/croissant.jpg"), 'Croissant', 13),
  Products( AssetImage("images/Espresso.jpg"),  'Espresso',  17.5),
  Products( AssetImage("images/hot chocolate.jpg"),  'Hot Chocolate',  15),
  Products( AssetImage("images/Icecream.jpg"),  'Ice Cream',  12),
  Products( AssetImage("images/iced coffee.jpg"), 'Iced Coffee', 13),
  Products( AssetImage("images/latte.jpg"),  'Latte',  17.5),
  Products( AssetImage("images/Peach tart.jpg"),  'Peach Tart',  15),
  Products( AssetImage("images/Strawberry pancakes.jpg"),  'Strawberry Pancakes',  15),

];
