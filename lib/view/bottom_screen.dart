import 'package:enefty_icons/enefty_icons.dart';
import 'package:figma_ui/controller/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bottomProvider = Provider.of<BottomProvider>(context);

    return Scaffold(
      body: bottomProvider.screens[bottomProvider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomProvider.currentIndex,
        onTap: (index) {
          bottomProvider.onTap(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              EneftyIcons.home_outline,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.star_outline, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 30,
              child: Image.asset(
                'assets/bag.png',
              ),
            ),
            //Icon(EneftyIcons.shopping_bag_outline, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(EneftyIcons.profile_outline, color: Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}
