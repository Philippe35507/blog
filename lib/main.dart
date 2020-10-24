import 'package:flutter/material.dart';
import './home_page.dart';
import './article_esp.dart';
import './article_fr.dart';
import './article_eng.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Sessions',
        theme: ThemeData(
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
        initialRoute: 'HomePage()',
        routes: {
          'articleFr': (context) => ArticleFr(),
          'articleEsp': (context) => ArticleEsp(),
          'articleEng': (context) => ArticleEng(),
        });
  }
}
