import 'package:app_project/Modules/Profile.dart';
import 'package:app_project/Modules/chat_screen.dart';

import 'package:app_project/view/Home_screen.dart';

import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int selectedindex = 0;
  List<Widget> currentpages = [
    const HomeScreen(),
    const Profile(),
    ChatScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange[900],
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 33,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'Profile '),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_sharp,
                size: 27,
              ),
              label: 'messege'),
        ],
        currentIndex: selectedindex,
        onTap: (index) {
          setState(() {
            selectedindex = index;
          });
        },
      ),
      body: IndexedStack(
        index: selectedindex,
        children: currentpages,
      ),
    );
  }
}
