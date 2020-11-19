import 'package:comics_flutter_app/utils/data.dart';
import 'package:comics_flutter_app/view/comic_detail.dart';
import 'package:comics_flutter_app/view/discovery_page.dart';
import 'package:comics_flutter_app/view/home_page.dart';
import 'package:comics_flutter_app/view/library_page.dart';
import 'package:comics_flutter_app/view/profile_page.dart';
import 'package:comics_flutter_app/view/category_page.dart';
import 'package:flutter/material.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  /*Data data = Data();
  await data.readData();*/
  runApp(new MaterialApp(
    routes: {
      '/': (context) => App(),
      '/comic_detail': (context) => ComicDetail(),
    },
  ));
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int _currentIndex = 0;
  List<Widget> _children = [
    HomePage(),
    CategoryPage(),
    //DiscoveryPage(),
    ComicDetail(),
    LibraryPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        // body: IndexedStack(
        //   index: _currentIndex,
        //   children: _children,
        // ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black.withOpacity(0.55),
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
