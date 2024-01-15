import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/view/clientHomePage.dart';
import 'package:lawyer_app_google_solutions/view/clientMessagePage.dart';
import 'package:lawyer_app_google_solutions/view/clientProfile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index = 0;
  void selectItem(int idx) {
    setState(() {
      index = idx;
    });
  }

  List<Widget> list = [
    ClientHomePage(),
    ClientMessagePage(),
    ClientProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    Widget content = list[index];
    return Scaffold(
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectItem,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: index == 0 ? Colors.blue : Colors.grey,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon:
                Icon(color: index == 1 ? Colors.blue : Colors.grey, Icons.chat),
            label: "messages",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                  color: index == 2 ? Colors.blue : Colors.grey,
                  Icons.account_circle_rounded),
              label: "profile"),
        ],
      ),

    );
  }
}
