import 'package:comics_flutter_app/view/CatagoryWidget.dart';
import 'package:comics_flutter_app/view/DiscoveryWidget.dart';
import 'package:comics_flutter_app/view/Home.dart';
import 'package:comics_flutter_app/view/HomeWidget.dart';
import 'package:comics_flutter_app/view/LibaryWidget.dart';
import 'package:flutter/material.dart';

import 'ProfileWidget.dart';

class HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> _children = [
    HomeWidget(),
    CatagoryWidget(),
    DiscoveryWidget(),
    LibaryWidget(),
    ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Phân loại',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assistant_navigation),
              label: 'Khám phá',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Tủ sách',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Tôi',
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
