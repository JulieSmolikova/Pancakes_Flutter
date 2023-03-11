import 'package:flutter/material.dart';

class CircleBox extends StatelessWidget {
  final Widget widget;
  final String text;

  const CircleBox({Key? key, required this.widget, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.15,
      height: size.height * 0.07,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.white.withOpacity(0.25)),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white.withOpacity(0.08),
                Colors.white.withOpacity(0.03)
              ],
              stops: const [
                0.2,
                0.8
              ])),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget,
            const SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
