import 'package:flutter/material.dart';
import 'package:myapp/widget.dart';

class HomeWidget extends StatelessWidget {
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
