import 'package:flutter/material.dart';
import 'package:myapp/widget.dart';

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
