import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/view_model/news_viewmodel.dart';

import '../model/news_model.dart';

class HomeView extends GetWidget<NewsViewModel>{
  final controller = Get.put(NewsViewModel());

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
     FutureBuilder(
       future: controller.getData(),
       builder: (context,AsyncSnapshot snapshot){
        NewsModel? data = snapshot.data;
        print('omar    ${snapshot.data}');
         return
          ListView.builder(
            itemCount: data!.articles!.length,
            itemBuilder: (context,index){
              if(snapshot.hasData){
                return Text(data!.articles![index].title.toString());
              }else{
                return CircularProgressIndicator();
              }
            }
        );
        },
     ),
   );
  }

}