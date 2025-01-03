import 'package:flutter/material.dart';

class CollectionsScreen extends StatelessWidget {
  const CollectionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/collection.jpg"),
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
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
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
                        'Collections',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Body Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Collection Summary Header
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: const Color.fromARGB(255, 26, 38, 171),
                            width: 2,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Collection Summary',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 13),
                    // Total Collected Text
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Total Collected: ',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 21, 19, 172)),
                      ),
                      TextSpan(
                        text: '₹50,000',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ])),
                    // const Text(
                    //   'Total Collected: ₹50,000',
                    //   style: TextStyle(
                    //     color: const Color.fromARGB(255, 26, 38, 171),
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 16,
                    //   ),
                    // ),
                    const SizedBox(height: 16),
                    // List of Collections
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3, // Adjust the number of rows as needed
                        itemBuilder: (context, index) {
                          return buildCollectionRow();
                        },
                      ),
                    ),
                    // Add Collection Button
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle add collection action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 26, 38, 171),
                            minimumSize: const Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Add Collection +',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for building a single row in the collection list
  Widget buildCollectionRow() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Client Information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Client',
                style: TextStyle(
                  color: const Color.fromARGB(255, 26, 38, 171),
                  fontSize: 12,
                ),
              ),
              Text(
                'Lorem ipsum',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Amount Information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Amount',
                style: TextStyle(
                  color: const Color.fromARGB(255, 26, 38, 171),
                  fontSize: 12,
                ),
              ),
              Text(
                '₹10,000',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Date Information
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Date',
                style: TextStyle(
                  color: const Color.fromARGB(255, 26, 38, 171),
                  fontSize: 12,
                ),
              ),
              Text(
                '21-Dec-2024, 3:00 PM',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // Action Buttons
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.edit,
                    size: 18, color: const Color.fromARGB(255, 26, 38, 171)),
                onPressed: () {
                  // Handle edit action
                },
              ),
              IconButton(
                icon: const Icon(Icons.delete, size: 18, color: Colors.red),
                onPressed: () {
                  // Handle delete action
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
