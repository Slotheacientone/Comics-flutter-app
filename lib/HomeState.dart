import 'package:flutter/material.dart';
import 'package:myapp/CatagoryWidget.dart';
import 'package:myapp/DiscoveryWidget.dart';
import 'package:myapp/Home.dart';
import 'package:myapp/HomeWidget.dart';
import 'package:myapp/LibaryWidget.dart';
import 'package:myapp/ProfileWidget.dart';

class HomeState extends State<Home> {
  int _currentIndex =0;
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
