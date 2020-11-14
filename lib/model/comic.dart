
class Comic {
  String title;
  String thumbnail;
  List<String> data;
  String category;
  String contents;

  Comic({this.title, this.thumbnail, this.data, this.category, this.contents});
 Comic.fromJson(Map<String,dynamic> json)
      : title = json['title'],
        thumbnail = json['imageUrl'],
        category = json['category'],
        contents = json['contents'];
}
