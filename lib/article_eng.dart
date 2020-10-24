import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class ArticleEng extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Flutter Sessions'))),
      backgroundColor: Colors.black87,
      body: FutureBuilder(
        future: rootBundle.loadString("/eng/hello.md"),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: 1600,
              width: 760,
              child: Markdown(
                padding: const EdgeInsets.all(60.0),
                data: snapshot.data,
                styleSheet: MarkdownStyleSheet(
                  codeblockPadding: EdgeInsets.all(40),
                  codeblockDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black,
                  ),
                  h1: TextStyle(
                    color: Colors.yellow,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                  p: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.normal,
                  ),
                  img: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      backgroundColor: Colors.grey),
                  code: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    backgroundColor: Colors.black,
                  ),
                ),
              ),
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
