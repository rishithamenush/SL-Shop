import 'package:flutter/material.dart';
import 'package:slshop/models/product.dart';

class Shop extends ChangeNotifier {
  //prodcts for sale
  final List<Product> _shop = [
    //product 1
    Product(
      name: "Product 1",
      price: 5000.00,
      description: "Item Description.......More Description............",
    ),

    Product(
      name: "Product 2",
      price: 5000.00,
      description: "Item Description.......More Description............",
    ),

    Product(
      name: "Product 3",
      price: 5000.00,
      description: "Test Item",
    ),

    Product(
      name: "Product 4",
      price: 1000.00,
      description: "Test Item",
    ),
  ];
  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
