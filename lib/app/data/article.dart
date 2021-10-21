import 'package:flutter/material.dart';

class Article {
  String title;
  String subTitle;
  String urlImage;
  DateTime date;
  int like;
  String category;
  Color color;

  Article({
    required this.title,
    required this.subTitle,
    required this.urlImage,
    required this.date,
    required this.like,
    required this.category,
    required this.color,
  });

  static List<Article> sampleArticles = [
    Article(
      title: "How 7 Lines of Code Turned Into a \$36 Billion Empire",
      subTitle:
          "Yeah, It’s safe to say these guys have a great sense of humor. Which isn’t really surprising for us, considering their seemingly absurd solution to online payments. Instead of chasing 1000-hours programming contract to build clunky payments solution for each individual client.",
      urlImage: "assets/images/img_article-1.png",
      date: DateTime.now(),
      like: 3055,
      category: "Technology",
      color: Color(0xff44A2CE),
    ),
    Article(
      title: "10 essential cognitive & behaviour patterns for UX design",
      subTitle:
          "These are a few of the most common behaviours that people demonstrate as they relate to product design. A product that supports these patterns will assist our users in achieving their goals effectively and quickly.",
      urlImage: "assets/images/img_article-2.png",
      date: DateTime.now(),
      like: 4689,
      category: "Design Thinking",
      color: Color(0xffA1C736),
    ),
  ];
}
