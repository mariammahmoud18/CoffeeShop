import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products {
  static int counter=0;
  int productID=0;
  final AssetImage productImage;
  final String productName;
  final String productDescription;
  final double productPrice;

  Products( this.productImage,  this.productName, this.productDescription, this.productPrice)
  {
     this.productID=counter++;
  }
}
List<Products> products = [
  Products( AssetImage("images/Basic coffee.jpg"), 'Basic coffee','Basic coffee', 12),
  Products( AssetImage("images/Basic donuts.jpg"), 'Basic Donuts','Basic Donuts', 13),
  Products( AssetImage("images/cappuccino.jpg"),  'cappuccino','Basic Donuts',  17.5),
  Products( AssetImage("images/Chocolate donuts.jpg"), 'Chocolate Donuts','Chocolate Donuts',  15),
  Products( AssetImage("images/cookies.jpg"),  'Cookies','Chocolate Donuts',  12),
  Products( AssetImage("images/croissant.jpg"), 'Croissant','Chocolate Donuts', 13),
  Products( AssetImage("images/Espresso.jpg"),  'Espresso','Chocolate Donuts',  17.5),
  Products( AssetImage("images/hot chocolate.jpg"),  'Hot Chocolate','Chocolate Donuts',  15),
  Products( AssetImage("images/Icecream.jpg"),  'Ice Cream','Chocolate Donuts',  12),
  Products( AssetImage("images/iced coffee.jpg"), 'Iced Coffee','Chocolate Donuts', 13),
  Products( AssetImage("images/latte.jpg"),  'Latte','Chocolate Donuts',  17.5),
  Products( AssetImage("images/Peach tart.jpg"),  'Peach Tart','Peach Tart',  15),
  Products( AssetImage("images/Strawberry pancakes.jpg"),'Peach Tart',  'Strawberry Pancakes',  15)
];

