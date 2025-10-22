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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apiservice.fetchproductsall(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Products>?> snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          "${snapshot.data![index].thumbnail}",
                        ),
                      ),
                      title: Text("${snapshot.data![index].title}"),
                      subtitle: Text("${snapshot.data![index].description}"),
                      trailing: Text("${snapshot.data![index].price}"),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("Error:${snapshot.error}"));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
      ),
    );
  }
}
