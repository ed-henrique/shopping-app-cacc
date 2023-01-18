import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/catalog_screen.dart';

void main() {
  runApp(const GetMaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CACC Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'SofiaSansSemiCondensed',
      ),
      home: const CatalogScreen(),
    );
  }
}
