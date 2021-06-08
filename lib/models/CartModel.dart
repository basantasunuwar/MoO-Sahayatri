import 'package:flutter/material.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:flutter_ecommerce_app/models/ProductDetails.dart';
import 'package:flutter_ecommerce_app/models/ProductsModel.dart';
import 'package:flutter_ecommerce_app/screens/ProductDetailScreen.dart';
import 'package:flutter_ecommerce_app/screens/ProductsScreen.dart';

// class CartModel {
//   int userId;
//   List<ProductDetails> products;
//   CartModel({@required this.userId, @required this.products});

//   CartModel.fromJson(Map<String, dynamic>json){

//   }
// }

// class CartProducts {
//   int count;
//   int quantity;
//   CartProducts({this.count, this.quantity});
//   CartProducts.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     quantity = json['quantity'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['count'] = this.count;
//     data['quantity'] = this.quantity;
//     return data;
//   }
// }

// var message;

// /// Creating the instance of flutter cart package.
// var cart = FlutterCart();

// /// sample function
// addToCart(dynamic _product) => {
//       message = cart.addToCart(
//           productId: _product.productId,
//           unitPrice: _product.productPrice,
//           quantity: _product.quantity,
//           uniqueCheck: _product.selectedProductType,
//           productDetailsObject: _product),
//     };

// removeItemFromCart(int index) => {
//       cart.decrementItemFromCart(index),
//     };

// addItemToCart(int index) {
//   cart.incrementItemToCart(index);
// }
