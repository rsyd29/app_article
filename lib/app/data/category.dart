import 'package:flutter/material.dart';

class Category {
  String name;
  String urlIcon;
  Color color;

  Category({
    required this.name,
    required this.urlIcon,
    required this.color,
  });

  static List<Category> sampleCategories = [
    Category(
      name: "Technology",
      urlIcon: "assets/images/ic_technology.png",
      color: Color(0xffD7F1F9),
    ),
    Category(
      name: "Science",
      urlIcon: "assets/images/ic_science.png",
      color: Color(0xffD9FDD8),
    ),
    Category(
      name: "Education",
      urlIcon: "assets/images/ic_education.png",
      color: Color(0xffFFF1D4),
    ),
  ];
}
