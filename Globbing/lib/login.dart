import 'package:flutter/material.dart';

import 'my_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          bakegroundSection(),
          email(),
          password(),
          text(),
          login(),
          facebookGoogle(),
          register(),
        ],
      ),
    );
  }

  Widget register() {
    return Container(
      margin: EdgeInsets.only(
        left: 40,
        top: 180,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "Not Registered ?",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          Text(
            "Register now",
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget facebookGoogle() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          facebook(),
          google(),
        ],
      ),
    );
  }

  Widget google() {
    return Container(
      width: 160,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          children: [
            googleLogo(),
            googleText(),
          ],
        ),
      ),
    );
  }

  Widget googleText() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Text(
        "Google",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  Widget googleLogo() {
    return Image.asset(
      "assets/icons/google.png",
      height: 20,
      width: 20,
    );
  }

  Widget facebook() {
    return Container(
      width: 160,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Row(
          children: [
            facebookLogo(),
            facebookText(),
          ],
        ),
      ),
    );
  }

  Widget facebookText() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        "Facebook",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }

  Widget facebookLogo() {
    return Image.asset(
      "assets/icons/facebook.png",
      height: 20,
      width: 20,
    );
  }

  Widget login() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return MyPage();
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

  Widget text() {
    return Text(
      "Forgot Password?",
      textAlign: TextAlign.end,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 15,
      ),
    );
  }

  Widget password() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 15,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Password",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget email() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Email",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget bakegroundSection() {
    return Container(
  
      height: 200,
      child: Stack(
        children: [
          Container(
            color: Colors.black,
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin: EdgeInsets.only(
                top: 60,
              ),
              child: Text(
                "GLOBBING",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 140,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Image.asset(
                "assets/icons/globbing_logo.png",
                height: 90,
                width: 90,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }
}
