import 'package:flutter/material.dart';

class HomeMenuModel {
  final String title;
  final LinearGradient linearGradient;
  final String imagePath;
  final String route;

  const HomeMenuModel({
    required this.title,
    required this.linearGradient,
    required this.imagePath,
    required this.route,
  });
}