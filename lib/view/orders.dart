// import 'package:flutter/material.dart';

// class OrderScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Header Image
//             Container(
//               height: 200,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(
//                       "assets/order.jpg"), // Add your image path here
//                   fit: BoxFit.cover,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(20),
//                   bottomRight: Radius.circular(20),
//                 ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Dropdown
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       border: Border.all(color: Colors.grey[300]!),
//                     ),
//                     child: DropdownButtonFormField<String>(
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.symmetric(horizontal: 12),
//                       ),
//                       hint: Text('Jalapeno'),
//                       items: [],
//                       onChanged: (value) {},
//                     ),
//                   ),
//                   SizedBox(height: 20),

//                   // Food Items
//                   _buildFoodItem(
//                     'Fried Rice',
//                     'Pesto House',
//                     'User 1',
//                     '₹100',
//                     'assets/food1.jpg',
//                   ),
//                   SizedBox(height: 12),
//                   _buildFoodItem(
//                     'Jollof Rice',
//                     'Suhani\'s Shop',
//                     'User 2',
//                     '₹125',
//                     'assets/food2.jpg',
//                   ),

//                   // Order Summary
//                   Container(
//                     margin: EdgeInsets.symmetric(vertical: 20),
//                     padding: EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(8),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.1),
//                           spreadRadius: 1,
//                           blurRadius: 4,
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('225'),
//                             Text('₹45'),
//                           ],
//                         ),
//                         SizedBox(height: 8),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('Subtotal',
//                                 style: TextStyle(fontWeight: FontWeight.w500)),
//                             Text(''),
//                           ],
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('Delivery',
//                                 style: TextStyle(fontWeight: FontWeight.w500)),
//                             Text(''),
//                           ],
//                         ),
//                         Divider(),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('Total',
//                                 style: TextStyle(fontWeight: FontWeight.bold)),
//                             Text('₹270',
//                                 style: TextStyle(fontWeight: FontWeight.bold)),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),

//                   // Submit Button
//                   Padding(
//                     padding: const EdgeInsets.only(right: 150, left: 200),
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF0D47A1),
//                         padding:
//                             EdgeInsets.symmetric(vertical: 16, horizontal: 30),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                       ),
//                       child: Text(
//                         'Submit',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFoodItem(
//       String title, String shop, String user, String price, String imagePath) {
//     return Container(
//       padding: EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             spreadRadius: 1,
//             blurRadius: 4,
//           ),
//         ],
//       ),
//       child: Row(
//         children: [
//           // Food Image
//           ClipRRect(
//             borderRadius: BorderRadius.circular(8),
//             child: Image.asset(
//               imagePath,
//               width: 80,
//               height: 80,
//               fit: BoxFit.cover,
//             ),
//           ),
//           SizedBox(width: 12),
//           // Food Details
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 Text(
//                   shop,
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Colors.grey[600],
//                   ),
//                 ),
//                 Text(
//                   user,
//                   style: TextStyle(
//                     fontSize: 12,
//                     color: Colors.grey[400],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Quantity Control
//           Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey[300]!),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   children: [
//                     IconButton(
//                       icon: Icon(Icons.remove, size: 16),
//                       onPressed: () {},
//                       color: Colors.grey[400],
//                     ),
//                     Text('1'),
//                     IconButton(
//                       icon: Icon(Icons.add, size: 16),
//                       onPressed: () {},
//                       color: Colors.grey[400],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 4),
//               Text(
//                 price,
//                 style: TextStyle(fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Column(
        children: [
          // Header Section
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/order.jpg"), // Replace with your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 16,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),

          // Dropdown Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.grey[300]!),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(border: InputBorder.none),
                value: 'Jalapeno',
                items: [
                  DropdownMenuItem(
                    value: 'Jalapeno',
                    child: Text('Jalapeno'),
                  ),
                ],
                onChanged: (value) {},
              ),
            ),
          ),

          // Food Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildFoodItem(
                  image: 'assets/food1.jpg',
                  title: 'Fried Rice',
                  restaurant: 'Pista House',
                  user: 'User 1',
                  price: '₹100',
                ),
                SizedBox(height: 12),
                _buildFoodItem(
                  image: 'assets/food2.jpg',
                  title: 'Jollof Rice',
                  restaurant: 'Suhani\'s Stop',
                  user: 'User 2',
                  price: '₹125',
                ),
                SizedBox(height: 20),

                // Summary Section
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("₹225"),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Delivery",
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          Text("₹45"),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "₹270",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                // Submit Button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0D47A1),
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildFoodItem({
    required String image,
    required String title,
    required String restaurant,
    required String user,
    required String price,
  }) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              image,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Text(restaurant,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                Text(user,
                    style: TextStyle(fontSize: 12, color: Colors.grey[400])),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove, size: 16),
                    onPressed: () {},
                  ),
                  Text('1', style: TextStyle(fontSize: 14)),
                  IconButton(
                    icon: Icon(Icons.add, size: 16),
                    onPressed: () {},
                  ),
                ],
              ),
              Text(price, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
