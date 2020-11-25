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
    Comic comic1 = Comic(
      title: 'Con Gái Bảo Bối Của Ma Vương',
      thumbnail:
          'https://st.truyenchon.com/data/comics/69/con-gai-bao-boi-cua-ma-vuong.jpg',
      category: 'Action - Comedy - Manhua - Mystery - Truyện Màu - Xuyên Không',
      contents:
          'Từ khi ở nhà cô, tôi bị bắt nạt rất nhiều. Muốn kết bạn nhưng vì béo mập nên bị bạn bè cô lập… sao đời người lại khó khăn như thế? Tôi chỉ muốn sống thật tốt! Sau một vụ tai nạn xe, lần nữa mở mắt ra, gì cơ? Đây là ma giới? Cha tôi là vua ma giới?! Người cha ma vương này quả thực cuồng cưng chiều con gái, ngay cả những tiểu ca ca cũng yêu chiều bảo bảo tôi đây tận trời, hạnh phúc quá!!',
      chapters: chapters,
    );
    Comic comic2 = Comic(
      title: 'Ngôn Linh Vương',
      thumbnail:
          'https://st.truyenchon.com/data/comics/230/ngon-linh-vuong.jpg',
      category: 'Adventure - Chuyển Sinh - Comedy - Fantasy - Shounen',
      contents:
          'Một bộ manga chuyển thể từ light novel hot nhất Nhật Bản. Đã có rất nhiều cuộc xung đột giữa các chủng tộc của các Humas, các Gabranth, và Evila. Để chống lại Demon King Evila cuộc đua, các vương quốc triệu tập năm học sinh trung học từ thế kỷ 21 Nhật Bản những người có sức mạnh của Heroes. Tuy nhiên, chỉ có bốn trong số năm của những sinh viên đã có danh hiệu Hero. Okamura Hiiro đã được triệu hồi do tai nạn khi cậu ngồi gần bốn học sinh khác trong lớp. Không giống như họ, cậu không có danh hiệu Hero, nhưng thay vào đó cậu đã có được danh hiệu Word Master và người ngoài cuộc vô tội. Thấy được sự dối trá của Quốc Vương Humas, Hiiro quyết định rằng cậu không có ý muốn tham gia vào cuộc chiến một cách ích kỷ. Rời khỏi lâu đài, Hiiro quyết định gia nhập Guild Adventurer và làm bất cứ điều gì cậu muốn',
      chapters: chapters,
    );
    Comic comic3 = Comic(
      title: 'Xông Vào Tim Anh',
      thumbnail:
          'https://st.truyenchon.com/data/comics/221/xong-vao-tim-anh.jpg',
      category:
          'Manhua - Ngôn Tình - Romance - School Life - Shoujo - Truyện Màu',
      contents:
          'Để thực hiện ước mơ đi nước ngoài du học, học bá Ninh Tiểu Cận ban ngày chăm chỉ học hành, ban đêm hát thuê ở quán bar. Những ngày bình thường bị một tên trộm xuất hiện phá vỡ - một tên trộm không trộm gì cả, lại nhiều lần dọn dẹp nhà cho cô? Sự nghi hoặc lạ lùng khiến Ninh Tiểu Cận phải bắt đầu tìm hiểu, càng tìm hiểu sâu, Ninh Tiểu Cận phát hiện tên trộm vậy mà lại có liên quan đến kẻ thù không đội trời chung ở trường - đệ nhất học thần Châu Ức…',
      chapters: chapters,
    );
    Comic comic4 = Comic(
      title: 'Thần Cấp Thấu Thị',
      thumbnail:
          'https://st.truyenchon.com/data/comics/193/than-cap-thau-thi.jpg',
      category: 'Action - Manhua - Mystery - Truyện Màu',
      contents:
          'Một lần ngoài ý muốn để Diệp Hàn có được thần kỳ năng lực nhìn xuyên tường, từ đây nhân sinh của hắn trở nên muôn màu muôn vẻ, khai thác mạnh nhất thương nghiệp đế quốc, xưng bá thế giới cược đàn, một tay y thuật diệu thủ hồi xuân, trở thành y đạo thánh thủ, có được ức vạn tài phú, la lỵ, ngự tỷ, hoa khôi cảnh sát, nữ thần nhao nhao hướng hắn đánh tới, làm một bản số lượng có hạn nam nhân, Diệp Hàn áp lực rất lớn, bất đắc dĩ cùng mấy cái kẻ trộm mộ đi dò thám hiểm, nhưng mà, một cái từ viễn cổ truy tìm đến nay bí mật kinh thiên dần dần hiện lên ở hắn trước mắt!...',
      chapters: chapters,
    );
    Comic comic5 = Comic(
      title: 'Ma Vương Đại Nhân, Phu Nhân Lại Bỏ Đi Rồi!',
      thumbnail:
          'https://st.truyenchon.com/data/comics/107/ma-vuong-dai-nhan-phu-nhan-lai-bo-di-roi-7121.jpg',
      category: 'Comedy - Manhua - Ngôn Tình - Romance - Shounen - Truyện Màu',
      contents:
          'Xuyên qua thế giới khác, lại nhập vào thân xác của 1 phế vật. Hừ, những kẻ đang ức hiếp ta, các ngươi phải trả giá...',
      chapters: chapters,
    );
    Comic comic6 = Comic(
      title: 'Cô bạn gái mà mình thích lại quên mang kính mất rồi',
      thumbnail:
          'https://st.truyenchon.com/data/comics/212/co-ban-gai-ma-minh-thich-lai-quen-mang-k-2766.jpg',
      category: 'Comedy - Romance - School Life - Slice of Life',
      contents:
          'Komura là một cậu học sinh đang thích thầm cô bạn gái ngồi kế bên mình tên là Mie-Một cô bé thường hay để quên kính của mình. Và với cục thính cực mạnh và cực kì ngọt từ cô bạn này, thì liệu cậu Komura nhà ta có thể đỡ được không',
      chapters: chapters,
    );
    comics.add(comic1);
    comics.add(comic2);
    comics.add(comic3);
    comics.add(comic4);
    comics.add(comic5);
    comics.add(comic6);
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
