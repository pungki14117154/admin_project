import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'nav_beranda_screen.dart';
import 'nav_chat_NULL.dart';
import 'nav_chat_screen.dart';
import 'nav_profil_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FiraSansCondensed'),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final tabs = [
    BerandaScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//
//-------Footer--------

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png'),
            label: 'Beranda',
            backgroundColor: Color(0xFFF2711D),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/chat.png'),
            label: 'Chat',
            backgroundColor: Color(0xFFF2711D),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profil.png'),
            label: 'Profil',
            backgroundColor: Color(0xFFF2711D),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}
