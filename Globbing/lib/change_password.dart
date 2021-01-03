import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
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
        vertical: 20,
      ),
      child: Column(
        children: [
          oldPassword(),
          newPassword(),
          textPassword(),
          confirm(),
        ],
      ),
    );
  }
  Widget confirm(){
    return  Container(
        margin: EdgeInsets.only(
        top: 400,
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
            "Coniirm",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      );
  }
  Widget textPassword(){
    return Text("Do you want to log from all the devices?");
  }

  Widget newPassword() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 25,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "New password",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget oldPassword() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Old password",
          border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.circular(8),
          ),
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
              "Change password",
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
