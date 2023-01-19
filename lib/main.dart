import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/catalog_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CACC Shopping App',
      theme: ThemeData(
        fontFamily: 'SofiaSansSemiCondensed',
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Color.fromARGB(255, 22, 29, 48),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const CatalogScreen(),
    );
  }
}
