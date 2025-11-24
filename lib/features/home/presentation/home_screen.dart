import 'package:ai_recipes/core/core.dart';
import 'package:ai_recipes/features/home/data/data.dart';
import 'package:ai_recipes/features/home/presentation/widgets/home_screen_move_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final List<HomeMenuModel> _homeMenuList = [
    const HomeMenuModel(
        title: AppStrings.homeMenuTitle_1,
        linearGradient: AppColorLinearGradients.linear_ff8594_fedeae,
        imagePath: AppAssets.logoTextN,
        route: AppStrings.createRecipePath
    ),
    const HomeMenuModel(
        title: AppStrings.homeMenuTitle_2,
        linearGradient: AppColorLinearGradients.linear_dbb3f9_d3e7ff,
        imagePath: AppAssets.favourites,
        route: AppStrings.favouritePath
    ),
    const HomeMenuModel(
        title: AppStrings.homeMenuTitle_3,
        linearGradient: AppColorLinearGradients.linear_a9a9a9_dedede,
        imagePath: AppAssets.refrigerator,
        route: AppStrings.refrigeratorPath
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  _moveScreen(String route) {
    context.push(route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 51),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ..._homeMenuList.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: HomeScreenMoveBtn(
                    title: item.title,
                    linearGradient: item.linearGradient,
                    imagePath: item.imagePath,
                    onMove: () => _moveScreen(item.route),
                  ),
                ))
              ],
            ),
          )
      ),
    );
  }
}
