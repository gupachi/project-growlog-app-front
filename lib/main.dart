import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'utils/gorouter.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final appRouter = AppRouter();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  Supabase.initialize(
    url: dotenv.env['FLUTTER_SUPABASE_URL']!,
    anonKey: dotenv.env['FLUTTER_SUPABASE_ANON_KEY']!,
  );
  runApp(MyApp(router: appRouter.router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, // 디버그 모드 배너 제거
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      title: 'GrowLOG', // Optionally, add app title and theme as well
      theme: ThemeData(),
    );
  }
}
