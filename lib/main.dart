import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/homepage.dart';
import 'package:habit_tracker/theme/dark_mode.dart';
import 'package:habit_tracker/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(//theme provider
      ChangeNotifierProvider(
          create: (context) => Themeprovider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
      theme: Provider.of<Themeprovider>(context).themeData,
    );
  }
}
