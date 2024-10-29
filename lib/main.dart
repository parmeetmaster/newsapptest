import 'package:company_test/controller/widget_controller/theme_controller.dart';
import 'package:company_test/core/enums.dart';
import 'package:company_test/injectable/inject.dart';
import 'package:company_test/presentation/screens/home/home.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(EnviormentEnum.DEBUG);
  runApp(const ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref,child) {
        return MaterialApp(
          title: 'News App',
          theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
          // The Mandy red, dark theme.
          darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
          // Use dark or light theme based on system setting.
          themeMode: ref.watch(themeProvider).themeMode,
          home: const HomeScreen(),
        );
      }
    );
  }
}
