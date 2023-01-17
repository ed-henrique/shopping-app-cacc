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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CatalogScreen(),
    );
  }
}
