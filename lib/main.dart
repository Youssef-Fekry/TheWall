import 'package:flutter/material.dart';
import 'package:thewall/core/utils/app_router.dart';

void main() {
  runApp(const TheWall());
}

class TheWall extends StatelessWidget {
  const TheWall({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
