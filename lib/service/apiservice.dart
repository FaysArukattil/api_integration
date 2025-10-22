//GET    POST   PUT(edit)   DELETE

import 'dart:convert';
import 'package:api_integration/models/resp_products.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Apiservice {
  //1)create base URL
  final String baseurl = "https://dummyjson.com";

  //2)create a function to parse this String to Uri
  Future<List<Products>?> fetchproductsall() async {
    Uri url = Uri.parse("$baseurl/products");

    //3 import http import 'package:http/http.dart' as http;

    //4 There exist a chance of exception so use Try Catch
    try {
      //5 Fetch Data from API using http.get("Uri"). the fetched data is <response> data type
      final response = await http.get(url);

      //6 Check if succes or not and proceed if success.

      if (response.statusCode == 200) {
        //7 to convert data which is in response data type to json use jsonDecode()., the data is in the body part of response
        var json = jsonDecode(response.body);

        //8 once we have json we can get object of allproducts using RespProductsAll.fromJson(json)

        RespProducts resp = RespProducts.fromJson(json);

        //9 return the List<products>

        var plist = resp.products;
        return plist;
      }
    } catch (e) {
      debugPrint("Exception:::::::::::::::::::$e");
    }
    return null;
  }

  //4
}
