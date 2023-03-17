import 'package:flutter/material.dart';
import 'package:pancakes/widgets/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedTab = 2;

  void onSelectedTab(int index) {
    if (selectedTab == index) return;
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildNavBarItem('home', 0),
          buildNavBarItem('search', 1),
          buildNavBarItem('basket', 2),
          buildNavBarItem('card', 3),
          buildNavBarItem('user', 4),
        ],
      ),
    );
  }

  buildNavBarItem(String image, int index) {
    return GestureDetector(
      onTap: () => onSelectedTab(index),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width / 5,
            height: 60,
            color: Colors.transparent,
          ),
          Container(
            width: 58,
            height: 58,
            margin: const EdgeInsets.only(top: 20, bottom: 1, left: 10),
            padding: (index == selectedTab
                ? const EdgeInsets.all(10)
                : const EdgeInsets.all(17)),
            decoration: BoxDecoration(
              color: (index == selectedTab ? Colors.white : Colors.transparent),
              borderRadius: BorderRadius.circular(50),
              border: (index == selectedTab
                  ? Border.all(color: Colors.white.withOpacity(0.1))
                  : null),
              gradient: (index == selectedTab ? gradient_btn : null),
              boxShadow: (index == selectedTab
                  ? [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          blurRadius: 15,
                          offset: const Offset(-2, -2))
                    ]
                  : null),
            ),
            child: Image.asset('assets/images/icons/$image.png'),
          ),
        ],
      ),
    );
  }
}
