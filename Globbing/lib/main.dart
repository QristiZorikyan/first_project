import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Register.dart';
import 'login.dart';
import 'my_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // /// Intialize Management instance
  // MiaShop();

  // /// Intialize API instance
  // API();

  runApp(
    GlobbingApp(),
  );
}

class GlobbingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class Globbing extends StatefulWidget {
  @override
  _GlobbingState createState() => _GlobbingState();
}

class _GlobbingState extends State<Globbing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: body(),
    );
  }

  Widget body() {
    return Container(
      color: Color.fromRGBO(49, 51, 63, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          country(),
          heading(),
          world(),
          textG(),
          login(),
          register(),
        ],
      ),
    );
  }

  Widget register() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Register();
            },
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25,
        ),
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.green,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Text(
            "Register",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget login() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Login();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 25,
          left: 25,
          top: 15,
        ),
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            )),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Container(
          margin: EdgeInsets.only(
            top: 8,
          ),
          child: Text(
            "Login",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }

  Widget textG() {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      child: Text(
        "Buy onilne, get in Armenia with Globbing",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget world() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(80),
        ),
      ),
      child: Image.asset(
        "assets/icons/world.jpg",
        height: 200,
        width: 200,
      ),
    );
  }

  Widget heading() {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 70,
      ),
      child: Text(
        "GLOBBING",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget country() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(9.0),
        ),
      ),
      margin: EdgeInsets.only(
        top: 70,
        left: 0,
      ),
      width: MediaQuery.of(context).size.width / 3.5,
      height: 40,
      child: Row(
        children: [
          flag(),
          textE(),
          icon(),
        ],
      ),
    );
  }

  Widget icon() {
    return Icon(
      Icons.arrow_right,
      color: Colors.white,
    );
  }

  Widget textE() {
    return Container(
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Text(
        "English",
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
        ),
      ),
    );
  }

  Widget flag() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Image.asset(
        "assets/icons/uk.png",
        height: 20,
        width: 20,
      ),
    );
  }
}
