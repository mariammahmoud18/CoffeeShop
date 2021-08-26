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
  Products( AssetImage("images/Basic coffee.jpg"), 'Basic coffee','Basic coffee: Coffee + Hot water + Desired Sugar', 12),
  Products( AssetImage("images/cappuccino.jpg"),  'Cappuccino','Cappuccino: Coffee + Milk + Sugar + vanilla Extract',  17.5),
  Products( AssetImage("images/Basic donuts.jpg"), 'Basic Donuts','Basic Donuts: Flour + Baking Powder + Salt + Buttermilk + Granulated sugar + Melted Butter + Vegetable Oil + Vanilla Extract', 13),
  Products( AssetImage("images/Chocolate donuts.jpg"), 'Chocolate Donuts','Chocolate Donuts: Flour + Baking Powder + Salt + Buttermilk + Granulated sugar + Melted Butter + Vegetable Oil + Chocolate',  15),
  Products( AssetImage("images/cookies.jpg"),  'Cookies','Cookies: Flour + Baking Powder + Baking Soda + Cinnamon + Ginger + Nutmeg + Cloves + Salt + Sugar + Packed Light-Brown Sugar + Vegetable Oil + Egg + Vanilla Extract + Canned Pumpkin Puree + Semi-Sweet Chocolate Chips',  12),
  Products( AssetImage("images/Espresso.jpg"),  'Espresso','Espresso: Coffee + Hot Water + Sugar',  17.5),
  Products( AssetImage("images/hot chocolate.jpg"),  'Hot Chocolate','Hot Chocolate: Chocolate PoWder + Milk + Sugar',  15),
  Products( AssetImage("images/Icecream.jpg"),  'Ice Cream','Ice Cream: Heavy Cream + Milk + Granulated Sugar + Salt + Egg Yolks + Desired Taste',  12),
  Products( AssetImage("images/iced coffee.jpg"), 'Iced Coffee','Iced Coffee: Coffee + Cold Milk + Sugar + Ice Cubes + vanilla Extract', 13),
  Products( AssetImage("images/latte.jpg"),  'Latte','Latte: Coffee + Milk + Sugar',  17.5),
  Products( AssetImage("images/Peach tart.jpg"),  'Peach Tart','Peach Tart: Peaches + Fresh Lemon Juice + Granulated Sugar + Cornstarch + Cinnamon + Nutmeg',  15),
  Products( AssetImage("images/Strawberry pancakes.jpg"),'Strawberry Pancakes',  'Strawberry Pancakes: Flour + Granulated Sugar + Baking Powder + Baking Soda + Salt + Milk + Sour Cream + Eggs + Melted Unsalted Butter + Cold Butter',  15)
];

