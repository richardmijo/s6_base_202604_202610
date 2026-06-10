import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s6_base_202604_202610/providers/theme_provider.dart';
import 'package:s6_base_202604_202610/theme/app_theme.dart';
import 'router/app_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: MyApp3(),
    ),
  );
}

class MyApp3 extends StatelessWidget {
  const MyApp3({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return MaterialApp.router(
      title: 'Demo con provider',
      debugShowCheckedModeBanner: false,

      routerConfig: appRouter,

      themeMode: themeProvider.themeMode,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
