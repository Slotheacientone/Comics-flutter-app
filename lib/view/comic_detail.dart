import 'dart:ui';

import 'package:comics_flutter_app/model/comic.dart';
import 'package:flutter/material.dart';
import 'package:background_app_bar/background_app_bar.dart';

class ComicDetail extends StatefulWidget {
  final Comic comic;
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
                            image: NetworkImage(comic.thumbnail)),
                      ),
                    ),
                  ),
                ),
              ),
              new SliverFillRemaining(
                  child: TabBarView(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Text(
                      comic.contents,
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  ChapterCardList(chapters: comic.chapters),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class ChapterCardList extends StatefulWidget {
  final List<Chapter> chapters;
  ChapterCardList({this.chapters});

  @override
  _ChapterCardListState createState() =>
      _ChapterCardListState(chapters: chapters);
}

class _ChapterCardListState extends State<ChapterCardList> {
  List<Chapter> chapters;
  _ChapterCardListState({this.chapters});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                onTap: () {},
                dense: true,
                title: Text(chapters[index].name),
                tileColor: Colors.white,
              ),
              Divider(
                height: 1,
              ),
            ],
          );
        },
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
