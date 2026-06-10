import 'package:flutter/material.dart';
import 'package:s6_base_202604_202610/theme/app_theme.dart';
import 'router/app_router.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tema Demo',
      debugShowCheckedModeBanner: false,

      // GoRouter configuration
      routerConfig: appRouter,

      // Basic Theme (students can customize this)
      /*theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.pink),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        brightness: Brightness.dark,
      ),*/
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,

      themeMode: ThemeMode.light,
    );
  }
}

class ThemeScope extends InheritedWidget {
  final ThemeMode themeMode;
  final VoidCallback onToggleTheme;

  ThemeScope({
    super.key,
    required super.child,
    required this.themeMode,
    required this.onToggleTheme,
  });

  static ThemeScope of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeScope>()!;
  }

  @override
  bool updateShouldNotify(ThemeScope oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}

class MyApp2 extends StatefulWidget {
  const MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  ThemeMode _themeMode = ThemeMode.dark;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeScope(
      themeMode: _themeMode,
      onToggleTheme: _toggleTheme,
      child: MaterialApp.router(
        title: 'Demo tema dark',
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
        themeMode: _themeMode,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
      ),
    );
  }
}
