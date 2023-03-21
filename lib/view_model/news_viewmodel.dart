import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/news_model.dart';

class NewsViewModel extends GetxController{

  getData()async{

     final url = Uri.parse("https://newsapi.org/v2/top-headlines?country=eg&ar&category=sports&apiKey=90d56e14bde64c41b51269f0a74b2cf1");
     http.Response response = await http.get(url);
      if(response.statusCode==200){
        try{
          var r =jsonDecode(response.body);
          print('r = $r');
        print('${response.body } sadasdsad');
        return NewsModel.fromJson(r);
        }catch(e){
          print('There is error ${e.toString()}');
      }

      }else{
        print('Error in the status code maybe!!');
    }

  }
}