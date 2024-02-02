import 'package:flutter/material.dart';
import 'package:testovoe/page/home/components/header.dart';
import 'package:testovoe/page/home/components/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _NavigationState();
}

class _NavigationState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeBody(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
        ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home_outlined),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.phone_android_outlined),
            label: 'Calls',
          ),
          NavigationDestination(
            icon: Icon(Icons.sms_outlined),
            label: 'Messages',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Contacts',
          ),
        ],
      ),
    );
  }
}
