import 'package:Globbing/buy.dart';
import 'package:Globbing/my_address.dart';
import 'package:Globbing/my_order.dart';
import 'package:Globbing/personal_details.dart';
import 'package:Globbing/shops.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 350,
          child: Stack(
            children: [
              user(),
              myOrder(),
            ],
          ),
        ),
        myAddress(),
        marketBuy(),
      ],
    );
  }
    Widget marketBuy() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          market(),
          lineVertical(),
          buy(),
        ],
      ),
    );
  }

  Widget lineVertical() {
    return Container(
      height: 70,
      child: VerticalDivider(
        color: Colors.grey,
      ),
    );
  }

  Widget buy() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Buy();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            cart(),
            buyText(),
          ],
        ),
      ),
    );
  }

  Widget buyText() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        "Buy for Me",
        style: TextStyle(
          fontSize: 14,
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget cart() {
    return Image.asset(
      "assets/icons/cart.png",
      height: 40,
      width: 40,
      color: Colors.blueGrey,
    );
  }

  Widget market() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Shops();
            },
          ),
        );
      },
      child: Container(
        // color: Colors.red,
        margin: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          children: [
            marketIcon(),
            marketText(),
          ],
        ),
      ),
    );
  }

  Widget marketText() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        "Shops",
        style: TextStyle(
          fontSize: 14,
          color: Colors.blueGrey,
        ),
      ),
    );
  }

  Widget marketIcon() {
    return Image.asset(
      "assets/icons/shop.png",
      height: 40,
      width: 40,
      color: Colors.blueGrey,
    );
  }

  Widget myAddress() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return MyAddress();
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        height: 115,
        margin: EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/address.png",
              height: 70,
              width: 70,
            ),
            addressText()
          ],
        ),
      ),
    );
  }

  Widget addressText() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My addresses",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Addresses in 7 countries",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget myOrder() {
    return Positioned(
      top: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return MyOrder();
              },
            ),
          );
        },
        child: Container(
          width: 350,
          height: 115,
          margin: EdgeInsets.symmetric(
            horizontal: 25,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/walet.png",
                height: 80,
                width: 80,
              ),
              myOrderText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget myOrderText() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My orders",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "No orders yet",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget user() {
    return Container(
      color: Color.fromRGBO(49, 51, 63, 1),
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          userInfo(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  accoundBalance(),
                  bonus(),
                ],
              ),
              dropDownIcon(),
            ],
          ),
        ],
      ),
    );
  }

  Widget dropDownIcon() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Icon(
        Icons.arrow_downward,
        color: Colors.white,
      ),
    );
  }

  Widget accoundBalance() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Balance",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.account_balance_wallet,
                color: Colors.white,
              ),
              Text(
                "0.00 AMD",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bonus() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Bonus",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        Text(
          "0.00 AMD",
          style: TextStyle(
            fontSize: 22,
            color: Colors.grey,
          ),
        )
      ],
    );
  }

  Widget userInfo() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              userImage(),
              userName(),
              icon(),
            ],
          ),
          notificationIcon(),
        ],
      ),
    );
  }

  Widget notificationIcon() {
    return Icon(
      Icons.notification_important,
      color: Colors.white,
    );
  }

  Widget icon() {
    return Icon(
      Icons.arrow_drop_down_circle,
      color: Colors.white,
    );
  }

  Widget userName() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return PersonalDetails();
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          "Qristine Zorik...",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget userImage() {
    return Container(
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: OverflowBox(
        minHeight: 0,
        minWidth: 0,
        child: Image.asset(
          "assets/icons/globbing_logo.png",
          width: 40,
        ),
      ),
    );
  }
}