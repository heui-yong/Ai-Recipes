import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors._();

  static const color_transparent = Color(0x00000000);
  static const color_ffffff = Color(0xFFFFFFFF);
  static const color_000000 = Color(0xFF000000);
  static const color_ff8594 = Color(0xFFFF8594);
  static const color_fedeae = Color(0xFFFEDEAE);
  static const color_dbb3f9 = Color(0xFFDBB3F9);
  static const color_d3e7ff = Color(0xFFD3E7FF);
  static const color_a9a9a9 = Color(0xFFA9A9A9);
  static const color_dedede = Color(0xFFDEDEDE);
}

abstract class AppColorLinearGradients {
  const AppColorLinearGradients._();

  static const LinearGradient linear_ff8594_fedeae = LinearGradient(
    colors: [
      AppColors.color_ff8594,
      AppColors.color_fedeae,
    ]
  );
  static const LinearGradient linear_dbb3f9_d3e7ff = LinearGradient(
      colors: [
        AppColors.color_dbb3f9,
        AppColors.color_d3e7ff,
      ]
  );
  static const LinearGradient linear_a9a9a9_dedede = LinearGradient(
      colors: [
        AppColors.color_a9a9a9,
        AppColors.color_dedede,
      ]
  );
}