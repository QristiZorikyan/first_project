import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int) onChanged;
  final int currentTab;

  BottomNavBar({this.onChanged, this.currentTab});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentTab;
  double iconSize;

  Map<String, String> iconData = {
    'Home': 'assets/icons/home.png',
    'Enter order': 'assets/icons/add.png',
    'More': 'assets/icons/more.png',
  };

  @override
  void initState() {
    currentTab = widget.currentTab;
    iconSize = 23;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Color(0xfff5f5f5), blurRadius: 1),
        ],
      ),
      padding: EdgeInsets.only(top: 10),
      child: cupertinoTabBar(),
    );
  }

  Widget cupertinoTabBar() {
    return CupertinoTabBar(
      currentIndex: currentTab,
      backgroundColor: Colors.white,
      border: Border(),
      iconSize: iconSize,
      items: items(),
      onTap: (index) {
        setState(() {
          currentTab = index;
        });
        widget.onChanged(index);
      },
    );
  }

  List<BottomNavigationBarItem> items() {
    return List.generate(
      iconData.length,
      (index) {
        return bottomNavBarItem(
          title: iconData.keys.toList()[index],
          icon: iconData.values.toList()[index],
          index: index,
        );
      },
    );
  }

  BottomNavigationBarItem bottomNavBarItem({
    String title,
    String icon,
    int index,
  }) {
    return BottomNavigationBarItem(
      icon: Image.asset(
        icon,
        height: iconSize,
      ),
      activeIcon: Image.asset(
        icon,
        color: Colors.blueGrey,
        height: iconSize,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 12,
          color: currentTab == index ? Colors.grey : Colors.blueGrey,
        ),
      ),
    );
  }
}
