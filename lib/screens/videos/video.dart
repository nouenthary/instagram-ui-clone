import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.blue,
            height: 100,
            child: Center(
              child: Text("1"),
            ),
          ),
          Container(
            color: Colors.red,
            height: 100,
            child: Center(
              child: Text("2"),
            ),
          ),
        ],
      ),
    );
  }
}
