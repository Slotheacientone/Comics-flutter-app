import 'package:comics_flutter_app/model/comic.dart';
import 'package:comics_flutter_app/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Comic> comics = List<Comic>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    comics = getComics();
  }

  @override
  Widget build(BuildContext context) {
    Widget navbar = Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buttonColumn(Colors.yellow, Icons.add_chart, 'Ranking'),
          _buttonColumn(Colors.greenAccent, Icons.add_chart, 'Daily'),
          _buttonColumn(Colors.orangeAccent, Icons.home, 'Points'),
          _buttonColumn(Colors.pink, Icons.card_giftcard, 'Gifts'),
        ],
      ),
    );

    Widget news = Container(
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(width: 0.15)),
      ),
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Text(
              'TẤT CẢ CHÚ Ý',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.w900),
            ),
          ),
          Expanded(
            child: Text(
              'Đổi điểm lấy báo cập nhật',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            child: Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ],
      ),
    );

    Widget comicsSlider = _comicsSlider();
    Widget hotComics = Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: 8, left: 20),
          child: Text(
            'Hot Comics',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        _comicsSlider(),
      ],
    );

    Widget newComics = Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: 8, left: 20),
          child: Text(
            'New Comics',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        _comicsSlider(),
      ],
    );

    Widget topComics = Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(bottom: 8, left: 20),
          child: Text(
            'New Comics',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        _comicsSlider(),
      ],
    );

    return ListView(
      children: [
        Image.asset(
          'assets/images/cover.jpg',
          width: 600,
          height: 260,
          fit: BoxFit.cover,
        ),
        navbar,
        news,
        hotComics,
        newComics,
        topComics,
        // navbar
      ],
    );
  }

  Widget _buttonColumn(Color color, IconData icon, String label) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 8),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: color,
              child: Icon(icon),
            ),
          ),
          Text(label),
        ],
      ),
    );
  }

  Widget _comicsSlider() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 180,
      child: ListView.builder(
        itemCount: comics.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ComicTile(
            urlImage: comics[index].thumbnail,
            title: comics[index].title,
          );
        },
      ),
    );
  }
}

class ComicTile extends StatelessWidget {
  final String urlImage, title;

  ComicTile({this.urlImage, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(urlImage, width: 180, fit: BoxFit.cover),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
