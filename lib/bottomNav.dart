import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:srkproject/ScreenDesgin2.dart';
import 'package:srkproject/ScreenDesign3.dart';
import 'package:srkproject/UIProject.dart';

import 'constants.dart';
class BotomNav extends StatefulWidget {
  @override
  _BotomNavState createState() => _BotomNavState();
}

class _BotomNavState extends State<BotomNav> {
  PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [DesignScreens(),Design3(),ScreenDesign2(),Design3(),ScreenDesign2()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home,color: Colors.white,size: 40.0,),
        activeColor: appColor,
       // inactiveColor: Colors.grey,
        isTranslucent: false,
        title: ".",
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.bookmark,color: Colors.white,size: 40.0,),
        activeColor: appColor,
       // inactiveColor: Colors.grey,
        title: ".",
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add_circle_outline,color: Colors.white,size: 40.0,),
        activeColor: appColor,
      //  inactiveColor: Colors.grey,
        title: ".",
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.stars,color: Colors.white,size: 40.0,),
        activeColor: appColor,
        //inactiveColor: Colors.grey,
        title: ".",
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings,color: Colors.white,size: 40.0,),
        activeColor: appColor,
        //inactiveColor: Colors.grey,
        title: ".",
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return  PersistentTabView(
      controller: _controller,
      items: _navBarsItems(),
      screens: _buildScreens(),
      showElevation: false,
      navBarCurve: NavBarCurve.none,
      backgroundColor: appColor,
      iconSize: 26.0,
      navBarStyle:
      NavBarStyle.style5, // Choose the nav bar style with this property
      onItemSelected: (index) {
        print(index);
      },
    );
  }
}
