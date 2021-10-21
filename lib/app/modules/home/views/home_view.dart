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
          horizontal: defaultMargin,
        ),
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
          ],
        ),
      )),
    );
  }
}
