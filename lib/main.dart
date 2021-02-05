import 'package:flutter/material.dart';
import 'package:painting_app/delegates/no_scroll_behavior.dart';
import 'pages/pages.dart';
import 'util/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Painting App',
      color: AppColors.green,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: AppColors.green,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.blue,
        )
      ),
      builder: (_, child) {
        return ScrollConfiguration(behavior: NoScrollBehavior(), child: child);
      },
      home: HomePage(),
    );
  }
}