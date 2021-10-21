import 'package:app_article/app/data/category.dart';
import 'package:app_article/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/ic_avatar.png'),
                          ),
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/ic_hamburger.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Hello, Rsyd29!",
                  style: blackRegularFontStyle.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Find Your Favorite\nArticles Here!",
                  style: blackBoldFontStyle.copyWith(fontSize: 26, height: 1),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(right: 22),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search Article",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/ic_search.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.sampleCategories.length,
                    itemBuilder: (context, index) {
                      return buildCategory(controller.sampleCategories[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: blackBoldFontStyle.copyWith(fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          "View All",
                          style: greyRegularFontStyle.copyWith(fontSize: 12),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: greyColor,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategory(Category category) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      padding: EdgeInsets.only(left: 4, right: 16, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('${category.urlIcon}'),
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(category.name),
        ],
      ),
    );
  }
}
