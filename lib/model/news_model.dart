import 'dart:convert';

class Articles{
  String author;
  String title;
  String url;

  Articles(this.author,this.title , this.url);

   factory Articles.fromJson(Map<String,dynamic>data){
     return Articles(data["title"], data["author"], data["url"]);
  }
}
class NewsModel {
  List<Articles>?articles;

  NewsModel(this.articles);
  factory NewsModel.fromJson(Map<String, dynamic> data) {

    List<Articles> articles = [];
    for (var item in data["articles"]) {
      item = item as Map<String, dynamic>;
      articles.add(Articles(item['author'] as String, item['title'] as String,
          item['url'].toString()));
    }
    return NewsModel(articles);
  }

}