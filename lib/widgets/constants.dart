import 'package:flutter/material.dart';

//style
TextStyle style1 = const TextStyle(
    fontSize: 65,
    fontFamily: 'Lovers Quarrel',
    color: Color(0xff2AFE8C),
    shadows: [
      Shadow(
          offset: Offset(-5.0, -5.0),
          blurRadius: 30.0,
          color: Color(0xffFFCC80))
    ]);
const style2 = TextStyle(fontSize: 65, fontFamily: 'Redressed');
TextStyle style3 = TextStyle(fontSize: 14, color: Colors.white.withOpacity(0.8));

//color
Color KBrownL = const Color(0xffFFCC80).withOpacity(0.9);
const KBrownLl = Color(0xffb0a89d);
Color KBrownD = const Color(0xff0E1C2D).withOpacity(0.9);
const KGreen = Color(0xff2AFE8C);
const KGBlue = Color(0xff448ed8);


//gradient
LinearGradient gradient = LinearGradient(
    colors: [KBrownL, KBrownD],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0.4, 1]);
