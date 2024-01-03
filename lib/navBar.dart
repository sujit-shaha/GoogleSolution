import 'package:flutter/material.dart';
import 'package:lawyer_app_google_solutions/screen/clientHomePage.dart';
import 'package:lawyer_app_google_solutions/screen/clientMessagePage.dart';
import 'package:lawyer_app_google_solutions/screen/clientProfile.dart';

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
    Widget content = ClientHomePage();

    if(index == 1){
      content = ClientMessagePage();
    }
    if(index == 2){
      content = ClientProfile();
    }
    return Scaffold(

      body: content,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectItem,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "messages"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded), label: "profile"),
        ],
      ),
    );
  }
}
