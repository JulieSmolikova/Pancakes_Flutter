import 'package:flutter/material.dart';
import 'package:pancakes/widgets/constants.dart';

class BtnGreen extends StatefulWidget {
  const BtnGreen({Key? key}) : super(key: key);

  @override
  State<BtnGreen> createState() => _BtnGreenState();
}

class _BtnGreenState extends State<BtnGreen> {
  bool isPressed = false;

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (() {
          setState(() {
            isPressed = !isPressed;
          });
        }),
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              gradient: isPressed ? gradient_btn_green : null,
              boxShadow: isPressed ? [
                BoxShadow(
                          color: Colors.white.withOpacity(0.4),
                          blurRadius: 20,
                          offset: const Offset(-5, -5))
                    ] : null,
              borderRadius: BorderRadius.circular(50),
              border:
                  Border.all(color: Colors.white.withOpacity(0.5), width: 1.5)),
          child: const Center(
              child: Icon(
            Icons.done,
            size: 17,
            color: Colors.white,
          )),
        ));
  }
}
