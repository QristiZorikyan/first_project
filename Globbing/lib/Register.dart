import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }

  Widget appBar() {
    return AppBar(
       backgroundColor: Color.fromRGBO(49, 51, 63, 1),
      title: Row(
        children: [
          Icon(
            Icons.arrow_back,
            size: 30,
          )
        ],
      ),
    );
  }

  Widget body() {
    return Column(
      children: [
        bakegroundSection(),
        email(),
        password(),
        countryPhone(),
        facebookGoogle(),
        agreement()
      ],
    );
  }

  Widget agreement() {
    return Container(
      margin: EdgeInsets.only(
        top: 80,
      ),
      child: Column(
        children: [
          Text(
            "By countinuing you agree",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            "Agreement",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
            ),
          )
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
      height: 50,
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
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Text(
        "Google",
        style: TextStyle(
          fontSize: 14,
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
      height: 50,
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
          fontSize: 14,
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

  Widget countryPhone() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          countries(),
          phoneNumber(),
        ],
      ),
    );
  }

  Widget phoneNumber() {
    return Container(
      height: 50,
      width: 200,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Phone",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }

  Widget countries() {
    return Container(
      height: 50,
      width: 130,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          armFlag(),
          textNumber(),
          icon(),
        ],
      ),
    );
  }

  Widget icon() {
    return Icon(Icons.arrow_back);
  }

  Widget textNumber() {
    return Text(
      "+374",
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }

  Widget armFlag() {
    return Image.asset(
      "assets/icons/arm.png",
      height: 30,
      width: 30,
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
      color: Colors.black,
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Image.asset(
                  "assets/icons/key.png",
                ),
              ),
            ],
          ),
          registration(),
        ],
      ),
    );
  }

  Widget registration() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: [
          Text(
            "REGISTRATION",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Text(
            "1/3 Create account",
            style: TextStyle(
              fontSize: 14,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
