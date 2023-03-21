import 'dart:convert';

class Articles{
  String title;
  String author;
  String urltoImage;

  Articles(this.title, this.author, this.urltoImage);

   factory Articles.fromJson(Map<String,dynamic>data){
     return Articles(data["title"], data["author"], data["urlToImage"]);
  }
}
class NewsModel {
  List<Articles>?articles;

  NewsModel(this.articles);
   factory NewsModel.fromJson(Map<String,dynamic>data){
    // List<Map<String,dynamic>>articlesss=data as List<Map<String , dynamic>>;
     print('data = ${data["articles"]}');
     List<Articles>articles=[];

       data["articles"].forEach((key, value) {
         print('key = $key');
    });

    return NewsModel((data["articles"]));

  }

}