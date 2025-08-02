import 'package:flutter/material.dart';

class NavTabBar extends StatefulWidget {
  const NavTabBar({super.key});

  @override
  State<NavTabBar> createState() => _NavTabBarState();
}

class _NavTabBarState extends State<NavTabBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Home', style: optionStyle),
    Text('Index 1: Cart', style: optionStyle),
    Text('Index 2: Notifi', style: optionStyle),
    Text('Index 3: Profile', style: optionStyle),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomNavigationBar Sample')),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // if (index == 1) Navigator.pushReplacement(context, 'status');
          // if (index == 2) Navigator.pushReplacement(context, '');
          // if (index == 3) Navigator.pushReplacement(context, 'call');
        },
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Notifi'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
