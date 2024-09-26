import 'package:flutter/material.dart';
import 'package:spinecode_task/feature/home/view/homecreen.dart';
import 'package:spinecode_task/feature/leader_board/view/leader_board.dart';
import 'package:spinecode_task/feature/shopping/view/shopping_view.dart';
import 'package:spinecode_task/utils/color_constant/color_constants.dart';

class BottaomNav extends StatefulWidget {
  const BottaomNav({super.key});

  @override
  State<BottaomNav> createState() => _BottaomNavState();
}

class _BottaomNavState extends State<BottaomNav> {
  List screen = [
    Homecreen(),
    LeaderBoard(),
    ShoppingView(),
    Homecreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryLight,
      body: screen[selectedIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.bottomBg,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {
                  selectedIndex = 0;
                  setState(() {});
                },
                child: Image.asset(
                  'assets/home-2.png',
                  color:
                      selectedIndex == 0 ? Colors.pinkAccent : Colors.white54,
                )),
            InkWell(
                onTap: () {
                  selectedIndex = 1;
                  setState(() {});
                },
                child: Image.asset(
                  'assets/cup.png',
                  color: selectedIndex == 1 ? Colors.pinkAccent : null,
                )),
            InkWell(
                onTap: () {
                  selectedIndex = 2;
                  setState(() {});
                },
                child: Image.asset(
                  'assets/shopping-bag.png',
                  color: selectedIndex == 2 ? Colors.pinkAccent : null,
                )),
            InkWell(
                onTap: () {
                  selectedIndex = 3;
                  setState(() {});
                },
                child: Image.asset('assets/user.png')),
          ],
        ),
      ),
    );
  }
}
