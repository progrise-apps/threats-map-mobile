import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threats_map_mobile/home/widgets/map.dart';
import 'package:threats_map_mobile/threats/widgets/threat_main_category_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? _selectedIndex;
  bool _isThreatsSelectionMenuOpen = false;

  final double defaultIconSize = 34.0;
  final double _radiansPerDegree = pi / 180;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _toggleThreatTypesSelectionMenu() {
    setState(() {
      _isThreatsSelectionMenuOpen = !_isThreatsSelectionMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          const MapScreen(),
          if (_isThreatsSelectionMenuOpen) Positioned(
            bottom: 0,
            left: 0,
            child: ThreatMainCategoryMenu(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        focusElevation: 0.0,
        backgroundColor: Colors.white,
        onPressed: _toggleThreatTypesSelectionMenu,
        child: Transform.rotate(
          angle: _isThreatsSelectionMenuOpen ? 45 * _radiansPerDegree : 0 * _radiansPerDegree,
          child: Icon(Icons.add_outlined, color: Colors.black, size: defaultIconSize),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: BottomNavigationBar(
          elevation: 1,
          iconSize: defaultIconSize,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black87), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.black87), label: ''),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
