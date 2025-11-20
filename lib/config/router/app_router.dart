import 'package:go_router/go_router.dart';
import 'package:ai_recipes/features/features.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/create-recipe',
      builder: (context, state) => const CreateRecipeScreen(),
    ),
    GoRoute(
      path: '/favourite',
      builder: (context, state) => const FavouriteScreen(),
    ),
    GoRoute(
      path: '/refrigerator',
      builder: (context, state) => const RefrigeratorScreen(),
    ),
  ]
);