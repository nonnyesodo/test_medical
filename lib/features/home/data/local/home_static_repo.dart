 
import 'package:flutter/material.dart';

class HomeStaticRepo {
  static List<BottomNavModel> bottomNav = [
    BottomNavModel(
        iconActivate: Icons.home, iconInactive: Icons.home, label: 'home'),
    BottomNavModel(
        iconActivate: Icons.home, iconInactive: Icons.home, label: 'explore'),
    BottomNavModel(
        iconActivate: Icons.home, iconInactive: Icons.home, label: 'cravings'),
    BottomNavModel(
        iconActivate: Icons.home, iconInactive: Icons.home, label: 'orders'),
    BottomNavModel(
        iconActivate: Icons.home, iconInactive: Icons.home, label: 'account')
  ];
}

class BottomNavModel {
  final String label;
  final IconData? iconActivate, iconInactive;
  BottomNavModel(
      {required this.label,
      required this.iconActivate,
      required this.iconInactive});
}
