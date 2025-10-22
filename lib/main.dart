import 'package:api_integration/views/product_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget(), debugShowCheckedModeBanner: false);
  }
}


 //quick type
//1)copy response of api link
//2)Create model class using json to dart extension in androidstudio. check nullsafety,encode to decode,
//3)Create a service class apiservice.dart