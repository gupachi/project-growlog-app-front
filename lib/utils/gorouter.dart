import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/login_screen.dart';

class AppRouter {
  final GoRouter _router;
  final GlobalKey<NavigatorState> navigatorKey; // NavigatorKey 선언

  AppRouter()
    : navigatorKey = GlobalKey<NavigatorState>(), // NavigatorKey 초기화
      _router = GoRouter(
        navigatorKey: GlobalKey<NavigatorState>(),
        initialLocation: RoutePaths.login,
        routes: _buildRoutes(),
      );

  GoRouter get router => _router;

  static List<GoRoute> _buildRoutes() => [
    _createRoute(
      path: RoutePaths.login,
      name: RouteNames.login,
      builder: (_, state) => LoginScreen(),
    ),
  ];

  static GoRoute _createRoute({
    required String path,
    required String name,
    required Widget Function(BuildContext, GoRouterState) builder,
    List<GoRoute>? routes,
  }) => GoRoute(path: path, name: name, builder: builder, routes: routes ?? []);
}

// 경로 상수를 정의해 유지보수성 향상
class RoutePaths {
  static const login = '/login';
}

// 라우트 이름 상수를 정의
class RouteNames {
  static const login = 'LoginScreen';
}
