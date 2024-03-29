import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pancakes/catalog_page.dart';
import 'package:pancakes/item_page.dart';
import 'package:pancakes/models/pancakes_model.dart';
import 'package:pancakes/start_page.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/start_page': (context) => const StartPage(),
        '/catalog_page': (context) => const CatalogPage(),
        //'/item_page': (context) => const ItemPage(item: Pancakes()),
      },
      initialRoute: '/start_page',
      home: const Scaffold(),
    );
  }
}
