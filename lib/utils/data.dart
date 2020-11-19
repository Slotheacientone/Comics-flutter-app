import 'dart:convert';

import 'package:comics_flutter_app/model/comic.dart';
import 'package:flutter/services.dart';

class Data {
  static final Data _data = Data._internal();
  List<Comic> _comics = List<Comic>();

  factory Data(){
    return _data;
  }

  Data._internal();


  Future readData() async {
    String s = await rootBundle.loadString('assets/json/data.json');
    _comics =(json.decode(s) as List).map((i) => Comic.fromJson(i)).toList();
    print(_comics.length);
    //print(comics);
  }

  List<Comic> get comics => _comics;
}