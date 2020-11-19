
class Comic {
  String title;
  String thumbnail;
  List<Chapter> chapters;
  String category;
  String contents;

  Comic({this.title, this.thumbnail, this.chapters, this.category, this.contents});
 Comic.fromJson(Map<String,dynamic> json)
      : title = json['title'],
        thumbnail = json['imageUrl'],
        category = json['category'],
        contents = json['contents'];
}

class Chapter {
  List<String> urlImages;

  Chapter({this.urlImages});
}
