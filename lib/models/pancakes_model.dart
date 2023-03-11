import 'dart:convert';
import 'package:flutter/material.dart';

class Pancakes {
  final String image;
  final String name;
  final String price;

  const Pancakes({
    required this.image,
    required this.name,
    required this.price,
  });

  static Pancakes fromJson(json) =>
      Pancakes(
        image: json['image'],
        name: json['name'],
        price: json['price'],
     );
}

class PancakesApi {
  static Future<List<Pancakes>> getPancakesLocally(BuildContext context) async {
    final assetBungle = DefaultAssetBundle.of(context);
    final data = await assetBungle.loadString('assets/pancakes.json');
    final body = jsonDecode(data);
    return body.map<Pancakes>(Pancakes.fromJson).toList();
  }
}
