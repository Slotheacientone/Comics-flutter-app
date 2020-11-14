import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black.withOpacity(0.55),
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Hành động',
              ),
              Tab(
                text: 'Hài hước',
              ),
              Tab(
                text: 'Kinh dị',
              ),
              Tab(
                text: 'Trinh thám',
              ),
              Tab(
                text: 'Adventure',
              ),
              Tab(
                text: 'Fantasy',
              ),
              Tab(
                text: 'Romance',
              )
            ],
          ),
          title: Text(
            'Phân loại',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            Text('Hot'),
            Text('Mới nhất'),
            Text('Đã full'),
            Text('Đã full'),
            Text('Đã full'),
            Text('Đã full'),
            Text('Đã full'),
          ],
        ),
      ),
    );
  }
}
