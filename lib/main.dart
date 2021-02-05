import 'package:flutter/material.dart';
import 'package:painting_app/delegates/no_scroll_behavior.dart';
import 'package:provider/provider.dart';
import 'pages/pages.dart';
import 'util/app_colors.dart';
import 'providers/providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PaintingProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Painting App',
        color: AppColors.primary,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: AppColors.primary,

          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: AppColors.secondary,
          )
        ),
        builder: (_, child) {
          return ScrollConfiguration(behavior: NoScrollBehavior(), child: child);
        },
        home: PaintingPage(),
      ),
    );
  }
}