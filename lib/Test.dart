import 'package:comics_flutter_app/widget.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  List<Widget> banner = [
    widget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: banner.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return banner[index];
        },
      ),
    );
    ;
  }
}
