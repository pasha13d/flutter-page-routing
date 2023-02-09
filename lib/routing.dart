import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'error_screen.dart';
import 'pages/pages.dart';

final GoRouter router = GoRouter(
  errorBuilder: (context, state) => ErrorScreen(error: state.error),
  routes: <GoRoute>[
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: "/settings",
      builder: (BuildContext context, GoRouterState state) => const SettingsPage(),
    ),
    GoRoute(
      path: "/profile",
      builder: (BuildContext context, GoRouterState state) => const ProfilePage(),
    ),
  ],
);