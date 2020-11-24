import 'dart:convert';

import 'package:comics_flutter_app/model/comic.dart';
import 'package:flutter/services.dart';

List<Comic> getComics() {
  List<Comic> comics = List<Comic>();
  Comic comic;

  comic = Comic(thumbnail: 'assets/images/cover.jpg', title: 'title');
  comics.add(comic);
  comics.add(comic);
  comics.add(comic);
  comics.add(comic);
  comics.add(comic);
  comics.add(comic);
  comics.add(comic);

  return comics;
}

class Data {
  static final Data _data = Data._internal();
  List<Comic> _comics = List<Comic>();

  factory Data() {
    return _data;
  }

  Data._internal();

  void readData() async {
    String s = await rootBundle.loadString('assets/json/data.json');
    _comics = (json.decode(s) as List).map((i) => Comic.fromJson(i)).toList();
    //print(comics);
  }

  List<Comic> get comics => _comics;
}
