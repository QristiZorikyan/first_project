import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      height: 130,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 15,
          left: 15,
        ),
        child: Column(
          children: [
            restrictedItems(),

            Divider(),
            howToUse(),
            Divider(),
            contact(),
          ],
        ),
      ),
    );
  }

  Widget contact() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              iconR(),
              textContact(),
            ],
          ),
          iconBack(),
        ],
      ),
    );
  }

  Widget textContact() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        "Contact us",
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }

  Widget howToUse() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            iconR(),
            textH(),
          ],
        ),
        iconBack(),
      ],
    );
  }

  Widget textH() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        "How to use",
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }

  Widget restrictedItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            iconR(),
            textR(),
          ],
        ),
        iconBack(),
      ],
    );
  }

  Widget iconBack() {
    return Icon(Icons.chevron_right,
    color: Colors.blueGrey,
    );
  }

  Widget textR() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        "Restricted Items",
        style: TextStyle(
          fontSize: 17,
        ),
      ),
    );
  }

  Widget iconR() {
    return Icon(Icons.adjust);
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
              "Help",
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
