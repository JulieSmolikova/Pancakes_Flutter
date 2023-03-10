import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:pancakes/widgets/constants.dart';
import 'package:pancakes/widgets/gradient_text.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg/bg1.jpg'),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Positioned(
                    top: size.height * 0.05,
                    left: size.width * 0.3,
                    child: Text(
                      'Traditions',
                      style: style1,
                    )),
                Positioned(
                    top: size.height * 0.11,
                    left: size.width * 0.09,
                    child: Container(
                        width: size.width * 0.7,
                        height: size.height * 0.1,
                        color: Colors.transparent,
                        child: GradientText(
                          'Michelin',
                          style: style2,
                          gradient: gradient,
                        ))),
                Positioned(
                    top: size.height * 0.19,
                    left: size.width * 0.33,
                    child: Container(
                        width: size.width * 0.7,
                        height: size.height * 0.1,
                        color: Colors.transparent,
                        child: GradientText('Breakfast',
                            style: style2, gradient: gradient))),
                Positioned(
                  bottom: size.height * 0.155,
                  left: size.width * 0.40,
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 8,
                        decoration: BoxDecoration(
                            color: KGBlue.withOpacity(0.8),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: size.height * 0.06,
                  left: size.width * 0.18,
                  child: GestureDetector(
                      onTap: (() {
                        setState(() {
                          Navigator.of(context).pushNamed('/catalog_page');
                        });
                      }),
                      child: SizedBox(
                        width: size.width * 0.63,
                        height: size.height * 0.077,
                        child: Stack(
                          children: [
                            BackdropFilter(
                                filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5)),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50)),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.25)),
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        KBrownLl.withOpacity(0.8),
                                        KBrownD.withOpacity(0.8)
                                      ],
                                      stops: const [
                                        0.2,
                                        0.9
                                      ])),
                              child: Center(
                                  child: Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      )
                  ),
                ),
                Positioned(
                    bottom: size.height * 0.028,
                    left: size.width * 0.22,
                    child: Text('Already have an account \?', style: style3)),
                Positioned(
                    bottom: size.height * 0.028,
                    left: size.width * 0.65,
                    child: Text(
                      'Log in',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue.shade200.withOpacity(0.8)),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
