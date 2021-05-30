import 'package:flutter/material.dart';

class UniversalVariables {
  static final Color bgColor = Color(0xffECF3F5);
  static final Color topBarColor = Color(0xffCCEEED);
  static final Color notiColor = Color(0xffFF3838);
  static final Color kPrimaryTextColor = Color(0xff000000);

  static final Color minimalClipColor = Color(0xffCCEEED);
  static final LinearGradient minimalClipColorGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xFFFFFFFF).withOpacity(0.3), Color(0xFF5DDED8)],
  );
}

class TextSize {
  static final double smallSize = 8.0;
  static final double mediumSize = 16.0;
  static final double largeSize = 32.0;
}

class wallpapersChips {
  static final List<String> chips = [
    "Minimal",
    "Abstract",
    "Amoled",
    "Anime",
    "Animal",
    "City"
  ];
}
