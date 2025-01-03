import 'package:flutter/material.dart';

class ScheduledMeetingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background color
      body: Column(
        children: [
          // Top Section with Image and Back Arrow
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/meetings.jpg"), // Add your image path here
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
                      'Scheduled Meetings',
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

          // Section Title with Underline
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Align(
              alignment: Alignment.centerLeft, // Aligns the content to the left
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        color: const Color.fromARGB(255, 30, 22, 177),
                        width: 2), // Blue underline
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Scheduled Meetings",
                    style: TextStyle(
                      color: Colors.black, // Black text color
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Scheduled Meetings List
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                MeetingCard(
                  title: "Meeting 1",
                  date: "20-Dec-2024, 10:00 AM",
                  location: "XYZ Mart",
                  agenda: "Product Presentation",
                ),
                SizedBox(height: 16),
                MeetingCard(
                  title: "Meeting 2",
                  date: "21-Dec-2024, 3:00 PM",
                  location: "ABC Store",
                  agenda: "Order Follow-up",
                ),
              ],
            ),
          ),

          // Add New Meeting Button
          Padding(
            padding: const EdgeInsets.only(right: 90, left: 90),
            child: ElevatedButton(
              onPressed: () {
                // Add action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 17, 24, 158), // Blue button
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add New Meeting',
                    style: TextStyle(
                      color: Colors.white, // White button text
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MeetingCard extends StatelessWidget {
  final String title;
  final String date;
  final String location;
  final String agenda;

  const MeetingCard({
    required this.title,
    required this.date,
    required this.location,
    required this.agenda,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 6,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900], // Blue title text
            ),
          ),
          SizedBox(height: 8),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Date: ",
                  style: TextStyle(
                    color: Colors.blue[700], // Blue label for "Date"
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: date,
                  style: TextStyle(color: Colors.black), // Black text for date
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Location: ",
                  style: TextStyle(
                    color: Colors.blue[700], // Blue label for "Location"
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: location,
                  style:
                      TextStyle(color: Colors.black), // Black text for location
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Agenda: ",
                  style: TextStyle(
                    color: Colors.blue[700], // Blue label for "Agenda"
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: agenda,
                  style:
                      TextStyle(color: Colors.black), // Black text for agenda
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
