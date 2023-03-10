import 'package:flutter/material.dart';
import 'package:pancakes/catalog_page.dart';
import 'package:pancakes/item_page.dart';
import 'package:pancakes/start_page.dart';


void main() {
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
        '/item_page': (context) => const ItemPage(),
      },
      initialRoute: '/start_page',
      home: const Scaffold(),
    );
  }
}
