import 'package:Globbing/change_password.dart';
import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
        horizontal: 25,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          email(),
          gmail(),
          firstName(),
          lastName(),
          phoneNumber(),
          birthday(),
          sex(),
          password(),
          save(),
        ],
      ),
    );
  }

  Widget save() {
    return Container(
      margin: EdgeInsets.only(
        top: 80,
      ),
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.green,
        // border: Border.all(color: Colors.grey),
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
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Text(
          "Save",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget password() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return ChangePassword();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: Colors.grey),
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
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                passwordI(),
                passwordText(),
              ],
            ),
            passwordIcon(),
          ],
        ),
      ),
    );
  }

  Widget passwordI() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Icon(Icons.arrow_drop_down_circle),
    );
  }

  Widget passwordText() {
    return Text(
      "Change passwod",
      style: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    );
  }

  Widget passwordIcon() {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: Icon(
        Icons.arrow_forward,
      ),
    );
  }

  Widget sex() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Sex",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget birthday() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Birthday",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget phoneNumber() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Phone number",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget lastName() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Last name",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget firstName() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 50,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "First name",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget gmail() {
    return Text(
      "zorikyanqristine@gmail.com",
      style: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }

  Widget email() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        "Email",
        style: TextStyle(
          fontSize: 22,
          color: Colors.grey,
        ),
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
              "Personal details",
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
