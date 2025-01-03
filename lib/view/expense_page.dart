import 'package:flutter/material.dart';

class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Image with Text
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/expensee.jpg"), // Add your image path here
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 40,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Handle back button press
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white, // White back arrow icon
                        size: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 80,
                    child: Center(
                      child: Text(
                        'Expenses',
                        style: TextStyle(
                          color: Colors.white, // Added white color
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Add Expense Section
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Add Expense',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Expense Type Dropdown
                  Text(
                    'Expense Type:',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      ),
                      hint: Text('Lorem'),
                      items: [],
                      onChanged: (value) {},
                    ),
                  ),
                  SizedBox(height: 16),

                  // Amount Field
                  Text(
                    'Amount:',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixText: '₹',
                      hintText: "₹",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Notes Field
                  Text(
                    'Notes:',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Upload Receipt
                  Text(
                    'Upload Receipt:',
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors
                                  .grey[300], // Light gray background color
                              borderRadius: BorderRadius.circular(
                                  8), // Optional: Rounded corners
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 8,
                                horizontal: 8), // Padding around the text
                            child: Row(
                              children: [
                                Text(
                                  'Choose file Choose',
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                  // Text color
                                ),
                                Icon(Icons.file_upload_outlined),
                              ],
                            ),
                          ),
                          TextButton(
                            child: Text(
                              'No File chosen',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Submit Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 15, 9, 121),
                      minimumSize: Size(120, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Submit Expense',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 24),

                  // Expense History
                  Text(
                    'Expense History:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(height: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Date: ',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 21, 19, 172)),
                              ),
                              TextSpan(
                                text: '21-Dec-2024, 3:00 PM\n',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Amount: ',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 21, 19, 172)),
                              ),
                              TextSpan(
                                text: '₹255₹\n',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Type: ',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 21, 19, 172)),
                              ),
                              TextSpan(
                                text: 'Lorem\n',
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: 'Notes: ',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 21, 19, 172)),
                              ),
                              TextSpan(
                                text:
                                    'Lorem ipsum is simply dummy text of the printing and typesetting industry.',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
