import 'package:app_article/app/routes/app_pages.dart';
import 'package:app_article/shared/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  margin: EdgeInsets.only(bottom: 35, top: Get.height * 0.1),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/im_onboarding.png'),
                    ),
                  ),
                ),
                Text(
                  'Find Your Comfort Zone,\nStart Reading!',
                  style: blackBoldFontStyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Reading is proven to reduce stress and increase relaxation. Reading is the best way to relax and even six minutes can be enough to reduce the stress levels by more than two thirds, according to new research.',
                  style: blackLightFontStyle.copyWith(fontSize: 11),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/ic_dot.png',
                      width: 32,
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.HOME),
                      child: Image.asset(
                        'assets/images/ic_next.png',
                        width: 60,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
