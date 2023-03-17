import 'package:flutter/material.dart';
import 'package:pancakes/models/pancakes_model.dart';
import 'package:pancakes/widgets/constants.dart';

class ItemPage extends StatelessWidget {
  final Pancakes item;

  const ItemPage({Key? key, required this.item,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            width: size.width,
            height: size.height,

            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 20,
                  child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context).pop();
                  }),
                  child: Container(
                    width: size.width * 0.17,
                    height: size.height * 0.045,
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        gradient: gradient_btn,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: KWhite)),
                    child: Image.asset(
                      'assets/images/icons/arrow.png',
                    ),
                  ),
                ),),
                Positioned(
                  top: size.height * 0.15,
                  left: size.width * 0.15,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, bottom: 5),
                    padding: const EdgeInsets.all(12),
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      //boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.4), blurRadius: 20, offset: const Offset(-5, -5))],
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
                        'assets/images/catalog/${item.image}.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),),
          ),

        ),
    );
  }
}
