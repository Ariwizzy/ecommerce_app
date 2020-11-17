import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_app/Models/datas.dart';
import 'package:ecommerce_app/buttom_row.dart';
import 'package:ecommerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Row categoryRows({bigText, smallText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(bigText, style: wBigText),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text(smallText, style: wSmallText),
        ),
      ],
    );
  }

  double appBarIconSize = 24;

  @override
  Widget build(BuildContext context) {
    final categories = DummyData().categories;
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text("Og Dev", style: wAppBarText),
        ),
        actions: <Widget>[
          Icon(Icons.search, size: appBarIconSize),
          SizedBox(width: 10),
          Icon(Icons.notifications, size: appBarIconSize),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
              height: 210.0,
              width: double.infinity,
              child: Carousel(
                boxFit: BoxFit.cover,
                showIndicator: false,
                images: [
                  NetworkImage(
                      'https://t-rific.com/wp-content/uploads/2020/03/Summer-Kids-Little-Girls-Clothes-Cute-Flower-Print-Short-Sleeve-Ruffler-T-shirt-Tops-fashion-Belt.jpg'),
                  NetworkImage(
                      'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                  NetworkImage(
                      'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                  NetworkImage(
                      'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                ],
              )),

          categoryRows(bigText: "Categories", smallText: "See all"),

          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // border: Border.all(color: Colors.blueAccent,),
                        ),
                        height: 80,
                        margin: EdgeInsets.only(right: 1),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage:
                              NetworkImage(categories[index].iconData),
                        )),
                    SizedBox(height: 3),
                    Text(
                      categories[index].text,
                      overflow: TextOverflow.visible,
                    )
                  ],
                );
              },
            ),
          ),
          // SizedBox(height: 7),
          Container(
            height: 170,
            width: double.infinity,
            color: Colors.blue,
            child: Image.network(
              "https://androidtvbox-ek7q6hcfgvb.netdna-ssl.com/wp-content/uploads/2018/12/year-end-sale-geekbuying-1024x498.jpg",
              fit: BoxFit.cover,
            ),
          ),
          categoryRows(bigText: "New", smallText: "See all"),
          //ListView Scrollable Row
          // SizedBox(height: 7),
          //MoreSales Image
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  height: 120,
                );
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 8,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 50,
                        color: Colors.red,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBarWidget(),
    );
  }
}
//GridView.builder(
//             physics: ScrollPhysics(),
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             itemCount: categories.length,
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
//             itemBuilder: (context, index) {
//               return Column(
//                 children: <Widget>[
//                   CircleAvatar(
//                     radius: 25,
//                     backgroundImage: AssetImage(categories[index].iconData),
//                   ),
//                   SizedBox(height: 3),
//                   Text(categories[index].text,overflow: TextOverflow.visible,)
//                 ],
//               );
//             },
//           ),
