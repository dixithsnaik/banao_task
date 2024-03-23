import 'package:banao_task1/screens/chat.dart';
import 'package:banao_task1/screens/home.dart';
import 'package:banao_task1/screens/hub.dart';
import 'package:banao_task1/screens/learn.dart';
import 'package:banao_task1/screens/profile.dart';
import 'package:banao_task1/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final tabs = const [
    HomePage(),
    Learn(),
    Hub(),
    Chat(),
    Profile(),
  ];
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width > 400 ? 360 : size.width,
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(
          ontap: (p0) {
            setState(() {
              selectedIndex = p0;
            });
          },
          selectedIndex: selectedIndex,
        ),
        body: Center(
          child: tabs[selectedIndex],
        ),
      ),
    );
  }
}
