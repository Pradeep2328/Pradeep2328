import 'dart:js';

import 'package:go_router/go_router.dart';
import 'package:granulation/presentation/view/error.dart';
import 'package:granulation/presentation/view/home.dart';
import 'package:granulation/presentation/view/shifting/process_start.dart';

//class Router {
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    // * Sifting
    GoRoute(
      path: '/sifting',
      builder: (context, state) => const ShiftingProcess(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const Home(),
    ),
  ],
  // errorBuilder: (context, state) => const ErrorScreen(
  //     //error: state.error,
  //     ),
);
//}
