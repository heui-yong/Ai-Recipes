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
          gradient: widget.linearGradient,
          boxShadow: [
            BoxShadow(
              color: AppColors.color_000000.withOpacity(0.25), 
              blurRadius: 4,
              offset: const Offset(4, 5),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsetsGeometry.only(top: 5, left: 10, right: 22, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                widget.imagePath,
                height: 120,
                width: 120,
              ),
              Text(
                widget.title,
                style: const TextStyle(
                  color: AppColors.color_ffffff,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}