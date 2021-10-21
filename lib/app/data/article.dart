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
}
