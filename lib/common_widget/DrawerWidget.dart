import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/main.dart';
import 'package:flutter_ecommerce_app/screens/WishListScreen.dart';
import 'package:flutter_ecommerce_app/components/AppSignIn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _createDrawerHeader(),
            _createDrawerItem(
                icon: Icons.home,
                text: 'Home',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    )),
            _createDrawerItem(
                icon: FontAwesomeIcons.user,
                text: 'Sign In',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AppSignIn()),
                    )),
            _createDrawerItem(
                icon: Icons.favorite_border,
                text: 'Wish List',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishListScreen()),
                    )),
            _createDrawerItem(
                icon: Icons.call,
                text: 'Contact Us',
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmptyWishListScreen()),
                    )),
          ],
        ),
      ),
    );
  }
}

Widget _createDrawerHeader() {
  return DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Stack(children: <Widget>[
        Container(
            padding: EdgeInsets.all(20),
            child: Positioned(
              left: 0.0,
              bottom: 30.0,
              child: Image.asset(
                'assets/images/user.png',
                height: 90.0,
                width: 50.0,
              ),
            )),
        Positioned(
            bottom: 30.0,
            left: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text("MoO Sahayatri",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),
            )),
        Positioned(
            bottom: 19.0,
            left: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("'Developed by Pratima, Basanta and Dipesh'",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500)),
            )),
      ]));
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF808080),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(color: Color(0xFF484848)),
          ),
        )
      ],
    ),
    onTap: onTap,
  );
}
