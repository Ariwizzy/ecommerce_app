import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../buttom_row.dart';
import '../constant.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Row rowText(text1, text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            text1,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(
            text2,
            style: TextStyle(fontSize: 15.5, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: wAppBarText,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(10),
            ),
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            height: 150,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Nike New Shoes"),
                    Text("₦1000.00"),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(5),
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                          SizedBox(width: 5),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "+",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Colors.red,
                      ),
                      Icon(
                        Icons.delete,
                        size: 30,
                        color: Colors.grey[900],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter coupon code",
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: RaisedButton(
                      color: Colors.red[400],
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          rowText("Items (1)", "₦ 5200.30"),
          SizedBox(
            height: 20,
          ),
          rowText("Shipping", "₦ 800"),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.black,
            width: double.infinity,
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 1,
          ),
          SizedBox(
            height: 20,
          ),
          rowText("Total Price", "₦ 6000.30"),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            width: double.infinity,
            padding: EdgeInsets.only(top: 15, bottom: 15),
            decoration: BoxDecoration(
              color: Colors.red[500],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Checkout",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 17),
              ),
            ),
          ),
          SizedBox(
            height: 300,
          )
        ],
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
