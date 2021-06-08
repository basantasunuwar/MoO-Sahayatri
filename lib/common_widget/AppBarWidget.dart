import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/components/AppSignIn.dart';
import 'package:flutter_ecommerce_app/screens/ShoppingCartScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget appBarWidget(context) {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: Colors.red,
    elevation: 0.0,
    centerTitle: true,
    title:
        // padding: const EdgeInsets.all(5.0),
        Text(
      "MoO Sahayatri",
      style: new TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ShoppingCartScreen()),
          );
        },
        icon: Icon(FontAwesomeIcons.shoppingCart),
        color: Colors.white,
      ),
    ],
  );
}

// ShopingCartScreen() {
//   return Container(
//     child: Text(
//       "This is the Items on the cart",
//     ),
//   );
// }
