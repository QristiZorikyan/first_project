import 'package:Globbing/personal_details.dart';
import 'package:Globbing/receiving_address.dart';
import 'package:Globbing/settings.dart';
import 'package:Globbing/transactions.dart';
import 'package:flutter/material.dart';

import 'calculator.dart';
import 'help.dart';
import 'main.dart';

class More extends StatefulWidget {
  @override
  _MyPageTwoState createState() => _MyPageTwoState();
}

class _MyPageTwoState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 400,
          child: Stack(
            children: [
              userInfo(),
              settings(),
            ],
          ),
        ),
        settingsHelp(),
        logout(),
      ],
    );
  }

  Widget logout() {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Globbing();
              },
            ),
          );
        },
        child: Row(
          children: [
            logoutIcon(),
            logoutText(),
          ],
        ),
      ),
    );
  }

  Widget logoutText() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
      ),
      child: Text(
        "Logout",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }

  Widget logoutIcon() {
    return Icon(Icons.input);
  }

  Widget settingsHelp() {
    return Container(
      width: 350,
      margin: EdgeInsets.only(
        left: 30,
        top: 30,
        bottom: 30,
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
          setting(),
          Divider(),
          help(),
        ],
      ),
    );
  }

  Widget help() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Help();
              },
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               moreIcon('assets/icons/help.png'),
               moreText('Help'),
              ],
            ),
            bakceIcon(),
          ],
        ),
      ),
    );
  }


  Widget setting() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Settings();
              },
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              moreIcon('assets/icons/settings.png'),
              moreText('Settings'),
              ],
            ),
            bakceIcon(),
          ],
        ),
      ),
    );
  }


  Widget settings() {
    return Positioned(
      top: 80,
      child: Container(
        width: 350,
        margin: EdgeInsets.symmetric(
          horizontal: 30,
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
            calculator(),
            Divider(),
            transactions(),
            Divider(),
            personalInformation(),
            Divider(),
            recipient(),
            Divider(),
            receivingPoint()
          ],
        ),
      ),
    );
  }

  Widget receivingPoint() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) {
                return ReceivingAddress();
              },
            ),
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                moreIcon('assets/icons/shop.png'),
                moreText("Main receiving point"),
              ],
            ),
            bakceIcon(),
          ],
        ),
      ),
    );
  }

  

  Widget recipient() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              moreIcon('assets/icons/person.png'),
              moreText('Recipients'),
            ],
          ),
          bakceIcon(),
        ],
      ),
    );
  }

  Widget personalInformation() {
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
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                moreIcon('assets/icons/person.png'),
                moreText('Personal information'),
              ],
            ),
            bakceIcon(),
          ],
        ),
      ),
    );
  }

  Widget transactions() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Transactions();
            },
          ),
        );
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                moreIcon("assets/icons/walet.png"),
                moreText('Transactions')
              ],
            ),
            bakceIcon(),
          ],
        ),
      ),
    );
  }

  Widget calculator() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) {
              return Calculator();
            },
          ),
        );
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                moreIcon('assets/icons/calculator.png'),
                moreText('Calculator')
              ],
            ),
            bakceIcon(),
          ],
        ),
      ),
    );
  }

  Widget moreText(String text) {
    return Text(
      text ?? "",
      style: TextStyle(
        fontSize: 16,
      ),
    );
  }

  Widget moreIcon(String imageSrc) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(
        imageSrc,
        width: 40,
      ),
    );
  }

  Widget bakceIcon() {
    return Icon(Icons.arrow_right);
  }

  Widget userInfo() {
    return Container(
      color: Color.fromRGBO(49, 51, 63, 1),
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: Container(
        height: 50,
        margin: EdgeInsets.only(
          left: 15,
          right: 15,
          bottom: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                userImage(),
                userName(),
                icon(),
              ],
            ),
            notificationIcon(),
          ],
        ),
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
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        "Qristine Zorik...",
        style: TextStyle(
          fontSize: 22,
          color: Colors.white,
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
      child: Container(
        height: 50,
        child: OverflowBox(
          minHeight: 40,
          minWidth: 40,
          child: Image.asset(
            "assets/icons/globbing_logo.png",
            width: 40,
          ),
        ),
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
}
