import 'package:flutter/material.dart';
import 'package:pancakes/item_page.dart';
import 'package:pancakes/models/pancakes_model.dart';
import 'dart:ui'  show Clip;

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
          // GestureDetector(
          // onTap: () => Navigator.of(context).push(MaterialPageRoute(
          //     builder: (BuildContext context) => ItemPage(item: pancake))),
          // child:
          Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: Image.asset(pancake.image, fit: BoxFit.cover,),
                  )
                ],
              ),
        );
      });
}
