import 'package:flutter/material.dart';

class ComicsContent extends StatefulWidget {
  ComicsContent({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ComicsContentState createState() => new _ComicsContentState();
}

class _ComicsContentState extends State<ComicsContent> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new ListView(
          children: [
            Image.asset(
              'assets/images/pic1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic4.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic5.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic6.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic7.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic8.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/images/pic9.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
