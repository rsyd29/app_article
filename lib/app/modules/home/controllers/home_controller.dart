import 'package:app_article/app/data/category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
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
