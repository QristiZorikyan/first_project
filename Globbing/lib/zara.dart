import 'package:flutter/material.dart';

class HugoBoss extends StatefulWidget {
  @override
  _HugoBossState createState() => _HugoBossState();
}

class _HugoBossState extends State<HugoBoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heading(),
            section(),
            general(),
            content(),
            description(),
            market(),
            rating(),
            star(),
            stars(),
          ],
        ),
      ),
    );
  }

  Widget stars() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Ավելացնել գնահատական",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              )),
          Container(
            height: 50,
            child: Image.asset(
              "assets/icons/stars.png",
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }

  Widget star() {
    return Container(
      margin: EdgeInsets.only(
        right: 80,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/icons/stars.png",
            height: 100,
            width: 100,
          ),
          Text(
            "4(243)",
            style: TextStyle(
              fontSize: 14,
              color: Colors.blueGrey,
            ),
          ),
        ],
      ),
    );
  }

  Widget rating() {
    return Text(
      "Ranting",
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  Widget market() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Text(
        "To go the store",
        style: TextStyle(
          color: Colors.green,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget description() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        "'Hugo Boss' is the official online store of the world famous company.The lookbook contains the most  current models and lastest clothing collections",
        style: TextStyle(
          fontSize: 18,
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        "Content",
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  Widget general() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        "General",
        style: TextStyle(
          color: Colors.blueGrey,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget section() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        " Section",
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget heading() {
    return Container(
      child: Row(
        children: [
          Container(
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
            child: Image.asset(
              "assets/icons/zara.png",
              height: 100,
              width: 100,
            ),
          ),
          headingH(),
        ],
      ),
    );
  }

  Widget headingH() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          marketHeading(),
          country(),
          germany(),
        ],
      ),
    );
  }

  Widget germany() {
    return Text(
      "USA",
      style: TextStyle(
        fontSize: 20,
        color: Colors.blueGrey,
      ),
    );
  }

  Widget country() {
    return Text(
      "Country",
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }

  Widget marketHeading() {
    return Text(
      "Zara",
      style: TextStyle(
        fontSize: 22,
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
              "Zara",
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
