import 'package:flutter/material.dart';
import 'package:qtec_task_app/core/theme/app_theme.dart';
import 'package:qtec_task_app/presentation/pages/search/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qtec Task App',
      theme: CustomAppTheme.lightTheme,
      home: const SearchPage(),
    );
  }
}
