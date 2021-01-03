import 'package:flutter/material.dart';

class Recipients extends StatefulWidget {
  @override
  _RecipientsState createState() => _RecipientsState();
}

class _RecipientsState extends State<Recipients> {
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
        vertical: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          userName(),
          addRecipient(),
        ],
      ),
    );
  }

  Widget addRecipient() {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Text(
          "Add pecipient",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.green,
          ),
        ),
      ),
    );
  }

  Widget userName() {
    return Container(
      height: 60,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          userText(),
          userfullName(),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Row(
              children: [
                mainText(),
                userIcon(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget userIcon() {
    return Icon(Icons.chevron_right);
  }

  Widget mainText() {
    return Text(
      "main",
      style: TextStyle(
        fontSize: 12,
        color: Colors.red,
      ),
    );
  }

  Widget userfullName() {
    return Text(
      " Qristine Zorikyan",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    );
  }

  Widget userText() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        "QZ",
        style: TextStyle(
          fontSize: 18,
          color: Colors.green,
        ),
      ),
    );
  }

  Widget appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          Icon(
            Icons.arrow_back,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Recipients",
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
