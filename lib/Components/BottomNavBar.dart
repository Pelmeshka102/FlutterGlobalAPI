import 'package:flutter/material.dart';

import 'ConstValues.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 4;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
        case 3:
          break;
        case 4:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text(
            'Настройки',
            style: textStyle12,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.toc),
          title: Text('Тесты', style: textStyle12),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Сообщения', style: textStyle12),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.event_note),
          title: Text('Расписание', style: textStyle12),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Профиль', style: textStyle12),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: appColor,
      unselectedItemColor: unselected_nav_bar,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
    );
  }
}
