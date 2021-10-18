import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';

Color whiteColor = "FFFFFF".toColor();
Color blackColor = "000000".toColor();
Color greyColor = "7B7B7B".toColor();

TextStyle blackBoldFontStyle = GoogleFonts.poppins().copyWith(
  color: blackColor,
  fontWeight: FontWeight.bold,
);

TextStyle blackRegularFontStyle = GoogleFonts.poppins().copyWith(
  color: blackColor,
  fontWeight: FontWeight.w400,
);

TextStyle blackLightFontStyle = GoogleFonts.poppins().copyWith(
  color: blackColor,
  fontWeight: FontWeight.w300,
);

TextStyle greyBoldFontStyle = GoogleFonts.poppins().copyWith(
  color: greyColor,
  fontWeight: FontWeight.bold,
);

TextStyle greyRegularFontStyle = GoogleFonts.poppins().copyWith(
  color: greyColor,
  fontWeight: FontWeight.w400,
);

TextStyle greyLightFontStyle = GoogleFonts.poppins().copyWith(
  color: greyColor,
  fontWeight: FontWeight.w300,
);

const double defaultMargin = 40;
