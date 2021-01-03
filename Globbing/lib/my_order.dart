import 'package:Globbing/order_details.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatefulWidget {
  @override
  _MyOrderState createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  Map countryMap = {
    "assets/icons/write.png": "Entered",
    "assets/icons/shop.png": "In Warehouse",
    "assets/icons/plane.jpg": "On the Way",
    "assets/icons/address.png": "In Armenia",
    "assets/icons/present.jpg": "Received",
    
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }
  

  Widget body() {
    return Column(
      children: [
            ListView.builder(
            shrinkWrap: true,
            itemCount: countryMap.values.toList().length,
            itemBuilder: (BuildContext context, int index) {
              List country = countryMap.keys.toList();
              List countryIcon = countryMap.values.toList();
              return enter(country[index], countryIcon[index]);
            },
          ),
        
      ],
    );
  }

 

  Widget enter(String orderSrc, String orderName) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return OrderDetails();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 10,
        ),
        height: 80,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              orderSrc,
              width: 40,
            ),
          ),
          Text(
            orderName,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          ],
        ),
      ),
    );
  }

 

  

 

  Widget appBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(49, 51, 63, 1),
      title: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "My Orders",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
