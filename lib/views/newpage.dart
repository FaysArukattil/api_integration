import 'package:flutter/material.dart';

class Newpage extends StatefulWidget {
  const Newpage({super.key});

  @override
  State<Newpage> createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  String timee = "";
  Stream<String> gettime() async* {
    while (true) {
      var d = DateTime.now();
      yield "${d.hour},${d.minute},${d.second}";
      await Future.delayed(Duration(seconds: 1));
    }
  }

  @override
  void initState() {
    super.initState();
    gettime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: gettime(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data!));
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
