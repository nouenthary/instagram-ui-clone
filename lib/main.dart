import 'package:flutter/material.dart';
import 'package:instagram/screens/news_feeds/news_feeds.dart';
import 'package:instagram/screens/videos/video.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Video(),
    );
  }
}
