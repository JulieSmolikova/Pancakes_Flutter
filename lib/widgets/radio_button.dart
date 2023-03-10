import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.onPress, required this.width, required this.color}) : super(key: key);

  final Function() onPress;
  final double width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: width,
        height: 9,
        margin: const EdgeInsets.symmetric(horizontal: 2.5),
        decoration: BoxDecoration(
            color: color,
            borderRadius:
            const BorderRadius.all(Radius.circular(30))),
      ),
    );
  }
}
