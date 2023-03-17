import 'package:flutter/material.dart';
import 'package:pancakes/item_page.dart';
import 'package:pancakes/models/pancakes_model.dart';
import 'package:pancakes/widgets/btn_green.dart';
import 'dart:ui' show Clip;

import 'package:pancakes/widgets/constants.dart';

class ListViewCatalog extends StatelessWidget {
  const ListViewCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pancakes>>(
        future: PancakesApi.getPancakesLocally(context),
        builder: (context, snapshot) {
          final pancakes = snapshot.data;
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(
                child: CircularProgressIndicator(),
              );
            default:
              return buildPancakes(pancakes!);
          }
        });
  }

  Widget buildPancakes(List<Pancakes> pancakes) => ListView.builder(
      itemCount: pancakes.length,
      itemBuilder: (context, index) {
        final pancake = pancakes[index];
        return
            GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => ItemPage(item: pancake))),
            child:
            Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          height: 120,
          child: Stack(
            children: [

              Positioned(
                top: 10,
                left: 0,
                child: Container(
                  margin: const EdgeInsets.only(left: 15, bottom: 5),
                  padding: const EdgeInsets.all(12),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: gradient_box,
                      border: Border.all(color: Colors.white.withOpacity(0.4))),
                  child: Container(
                    width: 80,
                    height: 80,
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(
                      'assets/images/catalog/${pancake.image}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              
              Positioned(top: 30, left: 160, child: SizedBox(child: Text(pancake.name, style: style7),)),

              Positioned(top: 57, left: 160, child: Container(width: 55, height: 35, decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white.withOpacity(0.2)), color: Colors.white.withOpacity(0.2)), child: Stack(
                children: [
                  Positioned(top: 5, left: 21, child: Text(pancake.price, style: style5)),
                  Positioned(top: 9, left: 4, child: Icon(Icons.currency_pound, color: KGreen.withOpacity(0.7), size: 18)),
                  Positioned(top: 5, right: 5, child: Text('99', style: style6)),
                ],
              ),)),
              
              const Positioned(top: 45, right: 15,
                  child: BtnGreen()
              )
            ],
          ),

          )

        );
      });
}
