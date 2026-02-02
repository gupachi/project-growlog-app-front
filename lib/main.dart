import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'utils/gorouter.dart';

final appRouter = AppRouter();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(router: appRouter.router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  MyApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // 디버그 모드 배너 제거
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'Direp', // Optionally, add app title and theme as well
      theme: ThemeData(),
      locale: const Locale('ko', 'KR'), // 기본 로케일을 한국어로 설정
      supportedLocales: const [
        Locale('ko', 'KR'), // 한국어
      ],
    );
  }
}
