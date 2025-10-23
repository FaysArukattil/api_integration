import 'package:api_integration/models/resp_products.dart';
import 'package:api_integration/service/apiservice.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Apiservice apiservice = Apiservice();

  List<Products>? plist = [];
  bool isloading = false;
  void toggle() {
    setState(() {
      isloading = !isloading;
    });
  }

  @override
  void initState() {
    super.initState();
    fetch("");
  }

  Future<void> fetch(String query) async {
    toggle();
    plist = await apiservice.searchProducts(query);
    toggle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              onChanged: (value) {
                fetch(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hint: Text("Search here"),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(child: _body()),
        ],
      ),
    );
    //   body: FutureBuilder(
    //     future: apiservice.fetchproductsall(),
    //     builder:
    //         (BuildContext context, AsyncSnapshot<List<Products>?> snapshot) {
    //           if (snapshot.hasData) {
    //             return ListView.builder(
    //               itemCount: snapshot.data!.length,
    //               itemBuilder: (context, index) {
    //                 return ListTile(
    //                   leading: CircleAvatar(
    //                     backgroundImage: NetworkImage(
    //                       "${snapshot.data![index].thumbnail}",
    //                     ),
    //                   ),
    //                   title: Text("${snapshot.data![index].title}"),
    //                   subtitle: Text("${snapshot.data![index].description}"),
    //                   trailing: Text("${snapshot.data![index].price}"),
    //                 );
    //               },
    //             );
    //           } else if (snapshot.hasError) {
    //             return Center(child: Text("Error:${snapshot.error}"));
    //           } else {
    //             return Center(child: CircularProgressIndicator());
    //           }
    //         },
    //   ),
    // );
  }

  Widget _body() {
    if (isloading) {
      return Center(child: CircularProgressIndicator());
    } else if (plist!.isEmpty) {
      return Center(child: Text("No Data"));
    } else {
      return ListView.builder(
        itemCount: plist!.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage("${plist![index].thumbnail}"),
            ),
            title: Text("${plist![index].title}"),
            subtitle: Text("${plist![index].description}"),
          );
        },
      );
    }
  }
}
