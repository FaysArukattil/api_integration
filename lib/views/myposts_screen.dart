import 'package:api_integration/models/posts.dart';
import 'package:api_integration/service/apiservice.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class MypostsScreen extends StatefulWidget {
  const MypostsScreen({super.key});

  @override
  State<MypostsScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MypostsScreen> {
  Apiservice apiservice = Apiservice();

  List<Posts>? plist = [];
  bool isloading = false;
  void toggle() {
    setState(() {
      isloading = !isloading;
    });
  }

  @override
  void initState() {
    super.initState();
    fetch();
  }

  Future<void> fetch() async {
    toggle();

    plist = await apiservice.posts();
    await Future.delayed(Duration(seconds: 5));
    toggle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [Expanded(child: _body())]),
    );
  }

  Widget _body() {
    if (isloading) {
      return Shimmer(
        duration: Duration(seconds: 3), //Default value
        interval: Duration(seconds: 1), //Default value: Duration(seconds: 0)
        color: Colors.white, //Default value
        colorOpacity: 0.3, //Default value
        enabled: true, //Default value
        direction: ShimmerDirection.fromLeftToRight(), //Default Value
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(backgroundColor: Colors.grey[200]),
              title: Container(
                height: 20,
                width: double.maxFinite,
                color: Colors.grey[200],
              ),
              subtitle: Container(
                height: 20,
                width: double.maxFinite,
                color: Colors.grey[200],
              ),
            );
          },
        ),
      );
    } else if (plist!.isEmpty) {
      return Center(child: Text("No Data"));
    } else {
      return ListView.builder(
        itemCount: plist!.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text(plist![index].id.toString())),

            title: Text("${plist![index].title}"),
            subtitle: Text("${plist![index].userId}"),
          );
        },
      );
    }
  }
}
