import 'package:app_article/app/data/article.dart';
import 'package:app_article/app/data/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Article> sampleArticles = [
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
  List<Category> sampleCategories = [
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

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
