import 'package:flutter/material.dart';

import 'package:news_app/features/daily_news/presention/pages/home/daily_news.dart';

void main() {
  // await injectionDepenctiecy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: DailyNews(),
    );
  }
}
