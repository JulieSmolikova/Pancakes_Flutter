import 'package:flutter/material.dart';
import 'package:pancakes/widgets/constants.dart';
import 'package:pancakes/widgets/radio_button.dart';

enum Number {
  bg1,
  bg2,
  bg3,
}

class ListBG extends StatefulWidget {
  final Function(String BG) onBG;

  //final Widget child;

  const ListBG({
    Key? key,
    required this.onBG,
    //required this.child
  }) : super(key: key);

  @override
  State<ListBG> createState() => _ListBGState();
}

class _ListBGState extends State<ListBG> {
  dynamic selectedButton;
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return

//       ListWheelScrollView(
//         itemExtent: 10,
//         diameterRatio: 500,
//         perspective: 0.001,
//         squeeze: 1.2,
//         physics: const FixedExtentScrollPhysics(),
//         onSelectedItemChanged: (index) => setState(() {
//               isSelected = index;
//             }),
//         children: [
//           PageView.builder(
//               itemCount: BG.length,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                     onTap: () => widget.onBG(BG[index]),
//                     child: Container(
//                         width: size.width,
//                         height: size.height,
//                         decoration: BoxDecoration(
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                     'assets/images/bg/${BG[index]}.jpg'),
//                                 fit: BoxFit.cover)),
//                         child: SizedBox(
//                             child: Stack(children: [
//                           Positioned(
//                               bottom: size.height * 0.155,
//                               left: size.width * 0.40,
//                               child: Row(
//                                 children: [
//                                   Container(
//                                     height: 8,
//                                     width: isSelected == index ? 40 : 10,
//                                     color: isSelected == index
//                                         ? KGBlue.withOpacity(0.8)
//                                         : Colors.white.withOpacity(0.8),
//                                   ),
//                                   Container(
//                                     height: 8,
//                                     width: isSelected == index ? 40 : 10,
//                                     color: isSelected == index
//                                         ? KGBlue.withOpacity(0.8)
//                                         : Colors.white.withOpacity(0.8),
//                                   ),
//                                   Container(
//                                     height: 8,
//                                     width: isSelected == index ? 40 : 10,
//                                     color: isSelected == index
//                                         ? KGBlue.withOpacity(0.8)
//                                         : Colors.white.withOpacity(0.8),
//                                   ),
//                                 ],
//                               ))
//                         ]))));
//               })
//         ]);
//   }
// }

PageView.builder(
    itemCount: BG.length,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
          onTap: () => widget.onBG(BG[index]),
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage('assets/images/bg/${BG[index]}.jpg'),
                    fit: BoxFit.cover)),
            child: SizedBox(
              child: Stack(
                children: [
                  Positioned(
                    bottom: size.height * 0.155,
                    left: size.width * 0.40,
                    child: Row(children: [

// Container(
//   width: selectedButton == BG[index] ? 40 : 10,
//   height: 8,
//   color: selectedButton == BG[index] ?  KGBlue.withOpacity(0.8)
//           : Colors.white.withOpacity(0.8)),

                              Buttons(
                                  onPress: (() {
                                    setState(() {
                                      selectedButton = Number.bg1;
                                    });
                                  }),
                                  width: selectedButton == Number.bg1 ? 40 : 10,
                                  color: selectedButton == Number.bg1
                                      ? KGBlue.withOpacity(0.8)
                                      : Colors.white.withOpacity(0.8)),
                              Buttons(
                                  onPress: (() {
                                    setState(() {
                                      selectedButton = Number.bg2;
                                    });
                                  }),
                                  width: selectedButton == Number.bg2 ? 40 : 10,
                                  color: selectedButton == Number.bg2
                                      ? KGBlue.withOpacity(0.8)
                                      : Colors.white.withOpacity(0.8)),
                              Buttons(
                                  onPress: (() {
                                    setState(() {
                                      selectedButton = Number.bg3;
                                    });
                                  }),
                                  width: selectedButton == Number.bg3 ? 40 : 10,
                                  color: selectedButton == Number.bg3
                                      ? KGBlue.withOpacity(0.8)
                                      : Colors.white.withOpacity(0.8)),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ));
            });
  }
}
