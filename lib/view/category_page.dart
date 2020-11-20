import 'package:comics_flutter_app/model/comic.dart';
import 'package:comics_flutter_app/view/comic_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  //List<Comic> uncategorizeComics;
  List<Comic> actionComics = List<Comic>();

  @override
  void initState() {
    super.initState();
    /* Data data = Data();
    uncategorizeComics = data.comics;
    actionComics = List<Comic>();
    print("uncategorize comics: " + uncategorizeComics.length.toString());
    for (Comic comic in uncategorizeComics) {
      if (comic.category.contains('Action')) {
        print("run");
        uncategorizeComics.add(comic);
      }
    }
    print(actionComics.length);*/
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black.withOpacity(0.55),
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Hành động',
              ),
              Tab(
                text: 'Hài hước',
              ),
              Tab(
                text: 'Kinh dị',
              ),
              Tab(
                text: 'Trinh thám',
              ),
              Tab(
                text: 'Adventure',
              ),
              Tab(
                text: 'Fantasy',
              ),
              Tab(
                text: 'Romance',
              )
            ],
          ),
          title: Text(
            'Phân loại',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: TabBarView(
          children: [
            ComicCard(),
            ComicCard(),
            ComicCard(),
            ComicCard(),
            ComicCard(),
            ComicCard(),
            ComicCard(),
          ],
        ),
      ),
    );
  }
}

class ComicCard extends StatefulWidget {
  @override
  _ComicCardState createState() => _ComicCardState();
}

class _ComicCardState extends State<ComicCard> {
  List<Comic> comics = List<Comic>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<Chapter> chapters = [
      new Chapter(name: 'chapter 1'),
      new Chapter(name: 'chapter 2'),
      new Chapter(name: 'chapter 3'),
      new Chapter(name: 'chapter 4'),
      new Chapter(name: 'chapter 5'),
      new Chapter(name: 'chapter 6'),
      new Chapter(name: 'chapter 7'),
      new Chapter(name: 'chapter 8'),
      new Chapter(name: 'chapter 9'),
      new Chapter(name: 'chapter 10'),
      new Chapter(name: 'chapter 11'),
      new Chapter(name: 'chapter 12'),
      new Chapter(name: 'chapter 13'),
      new Chapter(name: 'chapter 14'),
      new Chapter(name: 'chapter 15'),
    ];
    Comic comic = Comic(
      title: 'Con Gái Bảo Bối Của Ma Vương',
      thumbnail:
          'https://st.truyenchon.com/data/comics/69/con-gai-bao-boi-cua-ma-vuong.jpg',
      category: 'Action - Comedy - Manhua - Mystery - Truyện Màu - Xuyên Không',
      contents:
          'Từ khi ở nhà cô, tôi bị bắt nạt rất nhiều. Muốn kết bạn nhưng vì béo mập nên bị bạn bè cô lập… sao đời người lại khó khăn như thế? Tôi chỉ muốn sống thật tốt! Sau một vụ tai nạn xe, lần nữa mở mắt ra, gì cơ? Đây là ma giới? Cha tôi là vua ma giới?! Người cha ma vương này quả thực cuồng cưng chiều con gái, ngay cả những tiểu ca ca cũng yêu chiều bảo bảo tôi đây tận trời, hạnh phúc quá!!',
      chapters: chapters,
    );
    comics.add(comic);
    comics.add(comic);
    comics.add(comic);
    comics.add(comic);
    comics.add(comic);
    comics.add(comic);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: comics.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          ComicDetail(comic: comics[index])));
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.white70,
                elevation: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          //maxWidth: MediaQuery.of(context).size.width * 0.28,
                          maxHeight: MediaQuery.of(context).size.width * 0.38,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          child: Image.network(
                            comics[index].thumbnail,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.62,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              comics[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.62,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              comics[index].category,
                              style: TextStyle(
                                fontSize: 8,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
