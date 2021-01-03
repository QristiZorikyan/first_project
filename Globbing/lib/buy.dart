import 'package:flutter/material.dart';

class Buy extends StatefulWidget {
  @override
  _BuyState createState() => _BuyState();
}

class _BuyState extends State<Buy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: body(),
    );
  }

  Widget body() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 50,
          ),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Image.asset(
            "assets/icons/present.jpg",
            height: 100,
            width: 100,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 50,
          ),
          width: MediaQuery.of(context).size.width,
          child: Text(
            "Service currently not available in the  application.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
            ),
          ),
        ),
      ],
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
              "Buy for me",
              style: TextStyle(
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
