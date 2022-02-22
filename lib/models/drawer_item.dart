import 'package:flutter/material.dart';

class DrawerItem {
  DrawerItem(
      {required this.icon,
      required this.title,
      required this.routeName,
      this.isEnabled = true});
  final IconData icon;
  final String title;
  bool isEnabled;

  /// Indicates which page to navigate to when tapped.
  final Widget? routeName;
}
