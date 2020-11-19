import 'dart:ui';

import 'package:comics_flutter_app/model/comic.dart';
import 'package:flutter/material.dart';
import 'package:background_app_bar/background_app_bar.dart';

class ComicDetail extends StatefulWidget {
  Comic comic;
  ComicDetail({this.comic});

  @override
  _ComicDetailState createState() => _ComicDetailState(comic: comic);
}

class _ComicDetailState extends State<ComicDetail> {
  Comic comic;
  _ComicDetailState({this.comic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: new CustomScrollView(
            slivers: <Widget>[
              new SliverAppBar(
                backgroundColor: Colors.white,
                floating: false,
                snap: false,
                pinned: true,
                /* title: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('abc'),
                    ],
                  ),
                ), */
                title: Text(
                  comic.title,
                  style: TextStyle(fontSize: 15),
                ),
                titleSpacing: 10,
                expandedHeight: 240.0,
                bottom: new ColoredTabBar(
                  color: Colors.white,
                  tabBar: new TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black.withOpacity(0.55),
                    tabs: [
                      new Tab(text: 'Chi tiết'),
                      new Tab(text: 'Chương'),
                    ],
                  ),
                ),
                flexibleSpace: new BackgroundFlexibleSpaceBar(
                  //title: new Text(comic.title),
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                  background: new ClipRect(
                    child: new Container(
                      child: new BackdropFilter(
                        filter:
                            new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: new Container(
                          decoration: new BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                      ),
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://st.truyenchon.com/data/comics/69/con-gai-bao-boi-cua-ma-vuong.jpg')),
                      ),
                    ),
                  ),
                ),
                /* flexibleSpace: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 600,
                          sigmaY: 600,
                        ),
                        child: Container(
                          child: Image.network(
                            "https://st.truyenchon.com/data/comics/69/con-gai-bao-boi-cua-ma-vuong.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ), */
                /*   flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(
                    "https://st.truyenchon.com/data/comics/69/con-gai-bao-boi-cua-ma-vuong.jpg",
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    'Abc',
                    style: TextStyle(color: Colors.black),
                  ),
                  titlePadding: const EdgeInsets.only(bottom: 50.0),
                ), */
              ),
              new SliverFillRemaining(
                  child: TabBarView(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Text(
                      comic.contents,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  Text("abc"),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class ColoredTabBar extends Container implements PreferredSizeWidget {
  ColoredTabBar({this.color, this.tabBar});

  final Color color;
  final TabBar tabBar;

  @override
  Size get preferredSize => tabBar.preferredSize;

  @override
  Widget build(BuildContext context) => Container(
        color: color,
        child: tabBar,
      );
}
