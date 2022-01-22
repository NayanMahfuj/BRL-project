// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SidebarItem {
  String? title;
  LinearGradient? background;
  Icon? icon;
  SidebarItem(
      {required this.title, required this.background, required this.icon});
}

var sidebarItem = [
  SidebarItem(
    title: "Home",
    icon: const Icon(
      Icons.home,
      color: Colors.white,
    ),
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
  ),
  SidebarItem(
    title: "Course",
    icon: const Icon(
      Icons.library_books,
      color: Colors.white,
    ),
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFAC260B),
        Color(0xFF974332),
      ],
    ),
  ),
  SidebarItem(
    title: "Billing",
    icon: const Icon(
      Icons.credit_card,
      color: Colors.white,
    ),
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFF2B263),
        Color(0xFFf08f18),
      ],
    ),
  ),
  SidebarItem(
    title: "Settings",
    icon: const Icon(
      Icons.settings,
      color: Colors.white,
    ),
    background: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFF6194F2),
        Color(0xFF175EE3),
      ],
    ),
  )
];
