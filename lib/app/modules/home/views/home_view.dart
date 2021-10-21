import 'package:app_article/app/data/article.dart';
import 'package:app_article/app/data/category.dart';
import 'package:app_article/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
              mainAxisSize: MainAxisSize.min,
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
                  "Hello, Zia!",
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
                      return buildCategory(controller.sampleCategories[index],
                          rightMargin:
                              (index == controller.sampleCategories.length - 1)
                                  ? 0
                                  : 8);
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
                ),
                SizedBox(
                  height: 16,
                ),
                Flexible(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.sampleArticles.length,
                    itemBuilder: (context, index) {
                      return buildArticle(
                        controller.sampleArticles[index],
                        bottomMargin:
                            index == controller.sampleArticles.length - 1
                                ? 0
                                : 16,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildArticle(Article article, {double? bottomMargin}) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(bottom: bottomMargin!),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              article.urlImage,
              fit: BoxFit.cover,
              height: 130,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                left: 12,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    article.title,
                    style: blackBoldFontStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Text(
                      article.subTitle,
                      style: blackLightFontStyle.copyWith(
                        fontSize: 12,
                        color: Color(0xff595959),
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            MdiIcons.clock,
                            color: greyColor,
                            size: 10,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            article.date != DateTime.now()
                                ? "Today"
                                : article.date.day.toString(),
                            style: greyBoldFontStyle.copyWith(
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 5),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.heart,
                            color: greyColor,
                            size: 10,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            article.like.toString(),
                            style: greyBoldFontStyle.copyWith(
                              fontSize: 9,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.circle,
                            color: article.color,
                            size: 10,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            article.category,
                            style: greyBoldFontStyle.copyWith(
                              fontSize: 9,
                              color: article.color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategory(Category category, {double? rightMargin}) {
    return Container(
      margin: EdgeInsets.only(right: rightMargin!),
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
