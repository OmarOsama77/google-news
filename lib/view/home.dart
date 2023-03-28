import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/view_model/news_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/news_model.dart';

class HomeView extends GetWidget<NewsViewModel>{
  final controller = Get.put(NewsViewModel());


  @override
  Widget build(BuildContext context) {
    String title= "Title";
    String author= "Author";
    String url = "Url";
   return Scaffold(
     body:
     FutureBuilder(
       future: controller.getData(),
       builder: (context,AsyncSnapshot snapshot){
        NewsModel? data = snapshot.data;
        if(data==null){
          return Container(alignment: Alignment.center,
            width: double.infinity,
              child: CircularProgressIndicator(),
          );
        }
         return
          ListView.builder(
            itemCount: data!.articles!.length,
            itemBuilder: (context,index){
              return Container(width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top :35.0,left: 15,right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Card(
                          elevation: 50,
                          shadowColor: Colors.black,
                          color: Colors.orange,
                          child: SizedBox(
                            height: 220,
                            width: 350,
                            child: Column(
                              children: [
                                Text(author,style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text(data.articles![index].author.toString()),
                                SizedBox(height: 30,),
                                Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Text(data.articles![index].title.toString()),
                                SizedBox(height: 30,),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
        );
        },
     ),
   );
  }

}
// Text(data!.articles![index].title.toString()),
/*
  Text(author,style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text(data.articles![index].author.toString()),
                      SizedBox(height: 30,),
                      Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text(data.articles![index].title.toString()),
                      SizedBox(height: 30,),
                      Text(url,style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
 */