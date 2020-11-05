import 'package:flutter/widgets.dart';

class widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/cover.jpg",
      fit: BoxFit.cover,
    );
  }
}
