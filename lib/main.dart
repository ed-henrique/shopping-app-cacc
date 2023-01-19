import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/catalog_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'CACC Shopping App',
      theme: ThemeData(
        fontFamily: 'SofiaSansSemiCondensed',
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.black,
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
    ),
  );
}
