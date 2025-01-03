import 'package:figma_ui/view/home_page.dart';
import 'package:figma_ui/view/pages.dart';
import 'package:flutter/material.dart';

class BottomProvider extends ChangeNotifier {
  int currentIndex = 0;
  int adminCurrentIndex = 0;

  void onTap(index) {
    currentIndex = index;
    notifyListeners();
  }

  void adminOnTap(int index) {
    adminCurrentIndex = index;
    notifyListeners();
  }

  final List<Widget> screens = [
    HomePage(),
    StarPage(),
    shopPage(),
    ProfilePage(),
  ];
}
