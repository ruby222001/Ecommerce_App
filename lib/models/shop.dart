import 'package:app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  //product for sale
final List<Product> _shop =[
//product 1
Product(name: "Product 1", 
price: 290,
 description:"item description",
  imagepath: '',
  ),
  //product 2
  //product 1
Product(name: "Product 1", 
price: 290,
 description:"item description",
  imagepath: '',
  ),
  //product 1
Product(name: "Product 1", 
price: 290,
 description:"item description",
  imagepath: '',
  ),
  //product 1
Product(name: "Product 1", 
price: 2.90,
 description:"item description",
  imagepath: '',
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