import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:thewall/features/splash/presentation/views/widgets/slidingtext.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigationToHomeView();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(
            child: Image.asset(
          'images/mainlogo.png',
          fit: BoxFit.fill,
        )),
        Flexible(
          child: Lottie.network(
            'https://lottie.host/081e2881-0c68-420f-b243-417d9fbe76a6/oLnSMH1w3e.json',
          ),
        ),
        Flexible(
          child: SlidingText(slidingAnimation: slidingAnimation),
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigationToHomeView() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        GoRouter.of(context).push('/Homeview');
      },
    );
  }
}
