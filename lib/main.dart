import 'package:flutter/material.dart';
import 'package:news_c16/core/providers/theme_provider.dart';
import 'package:news_c16/core/resources/app_const/app_routes.dart';
import 'package:news_c16/core/resources/app_const/app_theme.dart';
import 'package:news_c16/presentaion/category_screen/category_view.dart';
import 'package:news_c16/presentaion/news_screen/news_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.getTheme,

      routes: {
        AppRoutes.newsRoute: (_) => NewsView(),
        AppRoutes.categoryRoute: (_) => CategoryView(),

      },
      initialRoute: AppRoutes.newsRoute,
    );
  }
}
