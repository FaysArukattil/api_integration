// ignore: unused_import
import 'package:api_integration/views/myposts_screen.dart';
// ignore: unused_import
import 'package:api_integration/views/newpage.dart';
// ignore: unused_import
import 'package:api_integration/views/product_list_view.dart';
// import 'package:api_integration/views/todoviewingpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Newpage(), debugShowCheckedModeBanner: false);
  }
}


 //quick type
//1)copy response of api link
//2)Create model class using json to dart extension in androidstudio. check nullsafety,encode to decode,
//3)Create a service class apiservice.dart