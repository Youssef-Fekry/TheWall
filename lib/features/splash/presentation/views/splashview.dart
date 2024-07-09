import 'package:flutter/material.dart';
import 'package:thewall/features/splash/presentation/views/widgets/splashviewbody.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
