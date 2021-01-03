import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
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
      appBar: appBar(),
      body: body(),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            select(),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: countryMap.keys.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                itemBuilder: (BuildContext contxt, int index) {
                  List countryList = countryMap.values.toList();
                  List countryImageList = countryMap.keys.toList();
                  return countryDetails(
                      countryList[index], countryImageList[index]);
                },
              ),
            ),
            shipping(),
            expresStandard(),
            Row(
              children: [
                crossWeight(),
                unit(),
              ],
            ),
            line(),
            textOver(),
            usaExpress(),
          ],
        ),
      ),
    );
  }

  Widget usaExpress() {
    return Container(
      margin: EdgeInsets.only(
        top: 130,
      ),
      height: 110,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          usaText(),
          line(),
          deliveryCost(),
        ],
      ),
    );
  }

  Widget deliveryCost() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Delivery cost",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Text(
            "0 Դ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget usaText() {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        left: 15,
      ),
      child: Text(
        "USA Express = 1KG /5000Դ",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget textOver() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Text("Over dimentional parcels"),
        ],
      ),
    );
  }

  Widget line() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      child: Divider(
        color: Colors.grey,
        thickness: 1,
      ),
    );
  }

  Widget unit() {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        height: 50,
        width: 110,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 15,
          ),
          child: Text(
            'kg',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ));
  }

  Widget crossWeight() {
    return Container(
      height: 50,
      width: 200,
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          hintText: "Cross weight",
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(7),
          ),
        ),
      ),
    );
  }

  Widget expresStandard() {
    return Row(
      children: [
        express(),
        standard(),
      ],
    );
  }

  Widget standard() {
    return Container(
      height: 70,
      width: 160,
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        children: [
          boatImage(),
          Column(
            children: [
              standardText(),
              standardT(),
            ],
          ),
        ],
      ),
    );
  }

  Widget standardT() {
    return Text(
      "2,5 months",
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }

  Widget standardText() {
    return Text(
      "Standard",
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    );
  }

  Widget boatImage() {
    return Image.asset(
      "assets/icons/boat.png",
      height: 50,
      width: 50,
    );
  }

  Widget express() {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        shape: BoxShape.rectangle,
      ),
      child: Row(
        children: [
          planeImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              expressText(),
              expressT(),
            ],
          ),
        ],
      ),
    );
  }

  Widget expressT() {
    return Text(
      "5-10 bus.days",
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }

  Widget expressText() {
    return Text(
      "Express",
      style: TextStyle(
        fontSize: 12,
      ),
    );
  }

  Widget planeImage() {
    return Image.asset(
      "assets/icons/plane.jpg",
      height: 50,
      width: 50,
    );
  }

  Widget shipping() {
    return Container(
      margin: EdgeInsets.only(
        top: 50,
      ),
      child: Text(
        "Shipping Method",
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }

  Widget select() {
    return Text(
      "Select country",
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }

  Widget countryDetails(String country, String imageSrc) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      width: 100,
      child: Column(
        children: [
          countryName(country),
          countryImage(imageSrc),
        ],
      ),
    );
  }

  Widget countryImage(String imageSrc) {
    return Container(
      child: Image.asset(
        imageSrc,
        width: 50,
      ),
    );
  }

  Widget countryName(String country) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        // left: 20,
      ),
      child: Text(
        country ?? "",
        style: TextStyle(
          color: Colors.black,
          fontSize: 9,
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
              "Calculator",
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
