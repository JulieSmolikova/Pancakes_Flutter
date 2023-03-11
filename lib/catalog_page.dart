import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pancakes/widgets/circle_box.dart';
import 'package:pancakes/widgets/constants.dart';
import 'package:pancakes/widgets/gradient_text.dart';
import 'package:pancakes/widgets/painter_catalog.dart';

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
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Positioned(
                top: size.height * 0.3,
                left: size.width * 0.2,
                child: Container(
                    width: 220,
                    height: 110,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white.withOpacity(0.55),
                              blurRadius: 200,
                              offset: Offset(0, 0))
                        ]
                    )
                ),
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

                // child: CustomPaint(
                //   painter: PainterCatalog(),
                child: Image.asset(
                  'assets/images/bg/bg1.jpg',
                  fit: BoxFit.cover,
                ),
                // ),
              ),
              SizedBox(
                width: size.width,
                height: size.height * 0.45,
                child: CustomPaint(
                  painter: PainterCatalog(),
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
                          Navigator.of(context).pop();
                        });
                      }),
                      child: Container(
                        width: size.width * 0.17,
                        height: size.height * 0.045,
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.grey,
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
                  bottom: size.height * 0.13,
                  left: size.width * 0.035,
                  child: const CircleBox(
                      widget: Icon(
                        Icons.star,
                        size: 20,
                        color: Colors.yellow,
                      ),
                      text: '4.9')),
              Positioned(
                  bottom: size.height * 0.04,
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
                  bottom: size.height * 0.04,
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
                            'assets/images/icons/placeholder.png', height: 27,
                          ),
                        ),
                      ],
                    )
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
