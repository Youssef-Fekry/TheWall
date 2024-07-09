import 'package:go_router/go_router.dart';
import 'package:thewall/features/home/presentation/views/homeview.dart';
import 'package:thewall/features/splash/presentation/views/splashview.dart';
import 'package:thewall/features/youtube/presentation/views/widgets/youtubeviewbody.dart';
import 'package:thewall/features/youtube/presentation/views/youtubeview.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Splashview(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const Homeview(),
      ),
      GoRoute(
        path: '/youtubeView',
        builder: (context, state) => const Youtubeview(),
      ),
      GoRoute(
        path: '/youtubeViewbody',
        builder: (context, state) => const Youtubeviewbody(),
      ),
    ],
  );
}
