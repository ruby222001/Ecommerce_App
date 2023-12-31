import 'package:app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  //product for sale
final List<Product> _shop =[
//product 1
Product(name: "PATEK PHILIPPE", 
price: 1295,
 description:"A 39mm 18k white gold case surrounding a black dial on a brand new black alligator strap with an 18k white gold tang buckle. ",
  imagepath: 'assets/watch1.jpg',
  ),
  //product 1
Product(name: "DE BETHUNE", 
price: 1290,
 description:"35.6mm x 39.5mm 18k white gold case surrounding a silver dial on a brand new black alligator strap with an 18k white gold tang buckle.",
  imagepath: 'assets/watch2.jpg',
  ),
  //product 1
Product(name: "VACHERON CONSTAINTIN", 
price: 2690,
 description:"36.7mm x 47.6mm platinum case surrounding a silver dial on a brand new black alligator strap with a platinum tang buckle. ",
  imagepath: 'assets/watch3.jpg',
  ),
  //product 1
Product(name: "F.P.JOURNE", 
price: 9900,
 description:"42mm 18k rose gold case surrounding a black and silver dial on a brown alligator strap with an 18k rose gold deployant buckle. ",
  imagepath: 'assets/watch4.jpg',
  ),
];
  //user cart
List<Product> _cart = [];
  //get product list
List<Product> get shop => _shop;
  //get user list
List<Product> get cart => _cart;

  //add item to cart
  void addTOCart(Product item){
    _cart.add(item);
    notifyListeners();
  }
  //remove item from cart
  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }
}