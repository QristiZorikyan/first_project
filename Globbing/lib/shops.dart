import 'package:Globbing/zara.dart';
import 'package:flutter/material.dart';

class Shops extends StatefulWidget {
  @override
  _ShopsState createState() => _ShopsState();
}

class _ShopsState extends State<Shops> {
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
          vertical: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            change(),
            all(),
            marketBoss(),
            marketBoss(),
            marketBoss(),
          ],
        ),
      ),
    );
  }

  Widget marketBoss() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return HugoBoss();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 15,
        ),
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
        child: Column(
          children: [
            marketLogo(),
            heading(),
            stars(),
            marketStory(),
          ],
        ),
      ),
    );
  }

  Widget marketStory() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Text(
        "Slorem hdbcdchdcguc fff s   s ss s s ajdhsgcudcbjhdsgdsbshjb jsb, dvhdvhsvshv hs",
        style: TextStyle(fontSize: 18, color: Colors.blueGrey),
      ),
    );
  }

  Widget stars() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 100,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/icons/stars.png",
            height: 70,
            width: 70,
          ),
          Container(
            child: Text(
              "(243)",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 22,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget heading() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        "Zara",
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
      ),
    );
  }

  Widget marketLogo() {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
      ),
      width: 80,
      height: 80,
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
        height: 70,
        width: 70,
      ),
    );
  }

  Widget all() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Text(
        "All",
        style: TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }

  Widget change() {
    return Container(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Change market",
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
              "Shops",
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
