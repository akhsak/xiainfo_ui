// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';
// // import 'package:flutter/widgets.dart';
// // import '../controller/bottom_provider.dart';

// // class BottomScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final bottomProvider = Provider.of<BottomProvider>(context);

// //     return Scaffold(
// //       body: bottomProvider.screens[bottomProvider.currentIndex],
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: bottomProvider.currentIndex,
// //         onTap: bottomProvider.onTap,
// //         type: BottomNavigationBarType.fixed,
// //         selectedItemColor: Colors.black,
// //         unselectedItemColor: Colors.grey,
// //         items: [
// //           _buildBottomNavigationBarItem(
// //             iconPath: "assets/home_icon.png",
// //             label: 'Home',
// //             isSelected: bottomProvider.currentIndex == 0,
// //           ),
// //           _buildBottomNavigationBarItem(
// //             iconPath: "assets/download_icon.png",
// //             label: 'Downloads',
// //             isSelected: bottomProvider.currentIndex == 1,
// //           ),
// //           _buildBottomNavigationBarItem(
// //             iconPath: "assets/premium_icon.png",
// //             label: 'Get Premium',
// //             isSelected: bottomProvider.currentIndex == 2,
// //           ),
// //           _buildBottomNavigationBarItem(
// //             iconPath: "assets/profile_icon.png",
// //             label: 'Profile',
// //             isSelected: bottomProvider.currentIndex == 3,
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   BottomNavigationBarItem _buildBottomNavigationBarItem({
// //     required String iconPath,
// //     required String label,
// //     required bool isSelected,
// //   }) {
// //     return BottomNavigationBarItem(
// //       icon: Container(
// //         decoration: BoxDecoration(
// //           borderRadius: BorderRadius.circular(10),
// //           color: isSelected
// //               ? const Color.fromARGB(255, 130, 167, 182)
// //               : Colors.transparent,
// //         ),
// //         padding: const EdgeInsets.all(8.0),
// //         child: Image.asset(
// //           iconPath,
// //           scale: 13,
// //         ),
// //       ),
// //       label: label,
// //     );
// //   }
// // }
// import 'package:figma_ui/controller/bottom_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// // Ensure you import the EneftyIcons package
// import 'package:enefty_icons/enefty_icons.dart';

// class BottomScreen extends StatelessWidget {
//   BottomScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Consumer<BottomProvider>(
//         builder: (context, value, child) => value.screens[value.currentIndex],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.white,
//         elevation: 0,
//         child: SizedBox(
//           height: 80,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               _BottomNavItem(EneftyIcons.home_outline, 0, context),
//               _BottomNavItem(EneftyIcons.star_outline, 1, context),
//               _BottomNavItem(EneftyIcons.shopping_bag_outline, 2, context),
//               _BottomNavItem(EneftyIcons.profile_outline, 3, context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _BottomNavItem(IconData icon, int index, BuildContext context) {
//     final bottomProvider = Provider.of<BottomProvider>(context);
//     final isSelected = bottomProvider.currentIndex == index;
//     final color = isSelected ? Colors.blue : Colors.black;

//     return GestureDetector(
//       onTap: () => bottomProvider.onTap(index),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, color: color), // Using the Icon widget with EneftyIcons
//         ],
//       ),
//     );
//   }
// }
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
