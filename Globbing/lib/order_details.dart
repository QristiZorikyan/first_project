import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.white,

      appBar: appBar(),
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 120,
        vertical: 200,
      ),
      child: Column(
        children: [
          globbingImage(),
          noOrder(),
        ],
      ),
    );
  }

  Widget noOrder() {
    return Container(
        margin: EdgeInsets.only(
        left:15,
      ),
      width: MediaQuery.of(context).size.width,
      child: Text(
        "No oders yet",
        style: TextStyle(
          fontSize: 16,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget globbingImage() {
    return Container(
    
      child: Image.asset(
        "assets/icons/logo_globbing.jpg",
      
        height: 220,
        width: 220,
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
              "My Order",
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
