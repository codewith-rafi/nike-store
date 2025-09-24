import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavigation extends StatefulWidget {
  final void Function(int)? onTabChange;
  const BottomNavigation({super.key, required this.onTabChange});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade200,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabBorderRadius: 12,
        onTabChange: (value) => widget.onTabChange!(value),
        tabs: [
          GButton(icon: Icons.home),
          GButton(icon: Icons.shopping_cart),
        ],
      ),
    );
  }
}