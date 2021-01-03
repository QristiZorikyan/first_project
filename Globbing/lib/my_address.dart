import 'package:flutter/material.dart';

class MyAddress extends StatefulWidget {
  @override
  _MyAddressState createState() => _MyAddressState();
}

class _MyAddressState extends State<MyAddress> {
  Map countryMap = {
    "assets/icons/usa.jpg": "USA",
    "assets/icons/uk.png": "United Kingdom",
    "assets/icons/china.png": "China",
    "assets/icons/german.png": "Germany",
    "assets/icons/italy.png": "Italy",
    "assets/icons/dubai.png": "Dubai",
    "assets/icons/russia.png": "Rassia",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: body(),
    );
  }

  Widget body() {
    return Container(
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: countryMap.values.toList().length,
            itemBuilder: (BuildContext context, int index) {
              List country = countryMap.values.toList();
              List countryIcon = countryMap.keys.toList();
              return countryItm(country[index], countryIcon[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget countryItm(String countryName, String countryIcon) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: 70,
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
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              countryIcon,
              width: 40,
            ),
          ),
          Text(
            countryName,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ],
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
              "My Addresss",
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
