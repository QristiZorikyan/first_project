import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          notifications(),
          language(),
          flagsCountries(),
        ],
      ),
    );
  }

  Widget flagsCountries() {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          english(),
          Divider(),
          arm(),
          Divider(),
          russia(),
        ],
      ),
    );
  }

  Widget russia() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        children: [
          flag("assets/icons/rassia.png"),
          title('Русски'),
        ],
      ),
    );
  }

  Widget arm() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: Row(
        children: [
          flag("assets/icons/arm.png"),
          title('Հայերեն'),
        ],
      ),
    );
  }

  Widget english() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        children: [
          flag("assets/icons/uk.png"),
          title('English'),
        ],
      ),
    );
  }

  Widget title(String text) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        text ?? "",
      ),
    );
  }

  Widget flag(String imageSrc) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(
        imageSrc,
        height: 30,
        width: 30,
      ),
    );
  }

  Widget language() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        "Language",
        style: TextStyle(
          fontSize: 15,
        ),
      ),
    );
  }

  Widget notifications() {
    return Container(
      height: 50,
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
          notificationIcon(),
          notificationText(),
        ],
      ),
    );
  }

  Widget notificationText() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Text(
        "Receive notofications",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget notificationIcon() {
    return Icon(
      Icons.notification_important,
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
              "Settings",
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
