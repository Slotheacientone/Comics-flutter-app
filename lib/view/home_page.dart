import 'package:comics_flutter_app/utils/data.dart';
import 'package:comics_flutter_app/widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> listBanner = [
    widget(),
  ];

  @override
  Widget build(BuildContext context) {
    var banner = ListView.builder(
      itemCount: listBanner.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return listBanner[index];
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MangaToon',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Row(
          children: [
            Row(
              children: [banner],
            ),
          ],
        ),
      ),
    );
  }
}
