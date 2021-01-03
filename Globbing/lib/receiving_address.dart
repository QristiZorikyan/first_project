import 'package:flutter/material.dart';

class ReceivingAddress extends StatefulWidget {
  @override
  _ReceivingAddressState createState() => _ReceivingAddressState();
}

class _ReceivingAddressState extends State<ReceivingAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      bottomNavigationBar: bottomBar(),
    );
  }

  Map cities = {
    'Arabkir': 'Hr. Kochar',
    'Kentron': "Mashtoc",
    'Ajapnyak': "Margaryan",
    'Malatia': 'Malatia',
    'Shengavit': 'Nzdeh',
  };
  Widget bottomBar() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
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
          "Confirm",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget body() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: SingleChildScrollView(
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     yerevan(),
        //     arabkir(),
        //     kentron(),
        //     ajapnyak(),
        //     malatia(),
        //     shengavit(),
        //     gTruck(),
        //     arabkir(),
        //     kentron(),
        //     ajapnyak(),
        //     malatia(),
        //     shengavit(),
        //   ],
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title("Erevan"),
            allCity(),
            title("G-Truck"),
            allCity(),
          ],
        ),
      ),
    );
  }

  Widget allCity() {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: cities.keys.length,
      itemBuilder: (BuildContext context, int index) {
        List cityList = cities.keys.toList();
        List addressList = cities.values.toList();
        return mainWidget(
          cityList[index],
          addressList[index],
        );
      },
    );
  }

  Widget mainWidget(String city, String address) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withOpacity(0.1),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          cityIcon(),
          cityAddress(city, address),
        ],
      ),
    );
  }

  Widget cityAddress(String city, String address) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            city ?? "",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            address ?? "",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget cityIcon() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(
        "assets/icons/shop.png",
        width: 35,
      ),
    );
  }

  Widget title(String text) {
    return Text(
      text ?? "",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
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
              "Main receiving address",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
