import 'dart:ui' show Clip, Offset, Radius, Size;
import 'package:flutter/material.dart';
import 'package:pancakes/widgets/bottom_nav_bar.dart';
import 'package:pancakes/widgets/circle_box.dart';
import 'package:pancakes/widgets/constants.dart';
import 'package:pancakes/widgets/glow_box.dart';
import 'package:pancakes/widgets/gradient_text.dart';
import 'package:pancakes/widgets/list_view_catalog.dart';
import 'package:pancakes/widgets/painter_catalog.dart';
import 'package:pancakes/widgets/painter_nav_bar.dart';

class CatalogPage extends StatefulWidget {
  const CatalogPage({Key? key}) : super(key: key);

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: KBrownD,
          body: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                    top: size.height * 0.5,
                    left: 0,
                    child: GlowBox(
                        width: 70,
                        height: 70,
                        colorBox: Colors.white.withOpacity(0.6),
                        blurRadius: 200)),
                Positioned(
                    top: size.height * 0.7,
                    left: 0,
                    child: GlowBox(
                        width: 70,
                        height: 70,
                        colorBox: Colors.white.withOpacity(0.6),
                        blurRadius: 200)),
                Positioned(
                  top: size.height * 0.3,
                  left: size.width * 0.2,
                  child: Container(
                      width: 220,
                      height: 110,
                      decoration:
                          BoxDecoration(color: Colors.transparent, boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(0.55),
                            blurRadius: 200,
                            offset: const Offset(0, 0))
                      ])),
                ),
                Container(
                  width: size.width,
                  height: size.height * 0.45,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Image.asset(
                    'assets/images/bg/bg1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: SizedBox(
                    width: size.width,
                    height: size.height * 0.45,
                    child: CustomPaint(
                      painter: PainterCatalog(),
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.017,
                  left: size.width * 0.035,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (() {
                          setState(() {
                            Navigator.of(context).pushNamed('/start_page');
                          });
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
                      ),
                      SizedBox(
                        width: size.width * 0.13,
                      ),
                      GradientText(
                        'Pancakes',
                        style: style4,
                        gradient: gradient1,
                      ),
                      SizedBox(
                        width: size.width * 0.13,
                      ),
                      Container(
                        width: size.width * 0.11,
                        height: size.height * 0.05,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            gradient: gradient_btn,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: KWhite)),
                        child: Image.asset('assets/images/icons/dots.png'),
                      )
                    ],
                  ),
                ),
                Positioned(
                    bottom: size.height * 0.62,
                    left: size.width * 0.035,
                    child: const CircleBox(
                        widget: Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.yellow,
                        ),
                        text: '4.9')),
                Positioned(
                    bottom: size.height * 0.53,
                    left: size.width * 0.035,
                    child: CircleBox(
                        widget: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Image.asset(
                            'assets/images/icons/chat.png',
                            height: 18,
                          ),
                        ),
                        text: '80')),
                Positioned(
                    bottom: size.height * 0.53,
                    right: size.width * 0.035,
                    child: Container(
                        width: size.width * 0.17,
                        height: size.height * 0.08,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: KGBlue.withOpacity(0.5))),
                        child: Stack(
                          children: [
                            Center(
                              child: SizedBox(
                                width: size.width * 0.17,
                                height: size.height * 0.08,
                                child: Image.asset(
                                  'assets/images/icons/map.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'assets/images/icons/placeholder.png',
                                height: 27,
                              ),
                            ),
                          ],
                        ))),
                Positioned(
                    top: size.height * 0.46,
                    child: Container(
                        width: size.width,
                        height: size.height,
                        color: Colors.transparent,
                        child: const ListViewCatalog())),
                Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      color: Colors.transparent,
                      child: CustomPaint(
                        painter: PainterNavBar(),
                        child: const BottomNavBar(),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
