import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text("HomeScreen"),
              // 첫 번째 버튼
              ElevatedButton(
                onPressed: () {
                  context.push('/create-recipe');
                },
                child: const Text("레시피 생성"),
              ),
              const SizedBox(height: 10), // 버튼 사이 간격

              // 두 번째 버튼
              ElevatedButton(
                onPressed: () {
                  context.push('/favourite');
                },
                child: const Text("즐겨찾기"),
              ),
              const SizedBox(height: 10), // 버튼 사이 간격

              // 세 번째 버튼
              ElevatedButton(
                onPressed: () {
                  context.push('/refrigerator');
                },
                child: const Text("나의 냉장고"),
              ),
            ],
          )
      ),
    );
  }
}
