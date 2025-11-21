import 'package:ai_recipes/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenMoveBtn extends ConsumerStatefulWidget {
  final String title;
  final LinearGradient linearGradient;
  final String imagePath;
  final VoidCallback onMove;

  const HomeScreenMoveBtn({
    super.key,
    required this.title,
    required this.linearGradient,
    required this.imagePath,
    required this.onMove,
  });

  @override
  ConsumerState<HomeScreenMoveBtn> createState() => _HomeScreenMoveBtnState();
}

class _HomeScreenMoveBtnState extends ConsumerState<HomeScreenMoveBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onMove,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: widget.linearGradient
        ),
      ),
    );
  }
}