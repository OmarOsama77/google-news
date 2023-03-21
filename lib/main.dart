import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snews/view/home.dart';


void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(

       home: HomeView(),

    );
  }

}
