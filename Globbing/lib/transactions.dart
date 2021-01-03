import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Color.fromRGBO(49, 51, 63, 1),
          height: 80,
          child: Row(
            children: [
              accoundBalance(),
              bonus(),
            ],
          ),
        ),
        globbingImage(),
      ],
    );
  }

  Widget globbingImage() {
    return Container(
      margin: EdgeInsets.only(
        top: 200,
      ),
      child: Image.asset(
        "assets/icons/logo_globbing.jpg",
        width: 250,
      ),
    );
  }

  Widget bonus() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bonus",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        Text(
          "0.00 AMD",
          style: TextStyle(
            fontSize: 22,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Widget accoundBalance() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Balance",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
              Text(
                "0.00 AMD",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(49, 51, 63, 1),
      elevation: 0,
      title: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Transactions",
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
