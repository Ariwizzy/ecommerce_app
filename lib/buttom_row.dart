import 'package:ecommerce_app/Screens/cart_screen.dart';
import 'package:ecommerce_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  BottomBar(this.text, this.icon);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      height: 53,
      width: MediaQuery.of(context).size.width / 5,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            color: Color(0xff676767),
            size: 25,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey[500], fontSize: 10.4),
          )
        ],
      ),
    );
  }
}

class BottomBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              );
            },
            child: BottomBar("Home", Icons.home),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
            child: BottomBar("Cart", Icons.shopping_cart),
          ),
          BottomBar("Favorite", Icons.favorite_border),
          BottomBar("Profile", Icons.person),
        ],
      ),
    );
  }
}
