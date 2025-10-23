import 'package:api_integration/service/apiservice.dart';
import 'package:flutter/material.dart';

class Todoviewingpage extends StatefulWidget {
  const Todoviewingpage({super.key});

  @override
  State<Todoviewingpage> createState() => _TodoviewingpageState();
}

class _TodoviewingpageState extends State<Todoviewingpage> {
  Apiservice apiservice = Apiservice();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: apiservice.fetchalltodos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text("${snapshot.data![index].userId}"),
                  title: Text("${snapshot.data![index].todo}"),
                  subtitle: Text("Status:${snapshot.data![index].completed}"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
