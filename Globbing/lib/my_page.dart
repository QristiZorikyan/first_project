import 'package:Globbing/bottom_bar.dart';
import 'package:Globbing/home_page.dart';
import 'package:Globbing/more.dart';
import 'package:flutter/material.dart';


class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: _body(),
      bottomNavigationBar: BottomNavBar(
        currentTab: _tabIndex,
        onChanged: (tabIndex) {
          setState(() {
            _tabIndex = tabIndex;
          });
        },
      ),
    );
  }
 Widget _body() {
    switch (_tabIndex) {
      case 0:
        return HomePage();
        break;
      case 1:
        return SizedBox();
        break;
      case 2:
        return More();
        break;
      
      default:
        return SizedBox();
    }
  }
  Widget appBar() {
    return AppBar(
      backgroundColor: Color.fromRGBO(49, 51, 63, 1),
      elevation: 0,
    );
  }


 

  

}
