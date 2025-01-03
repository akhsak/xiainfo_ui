import 'package:figma_ui/view/collection_page.dart';
import 'package:figma_ui/view/expense_page.dart';
import 'package:figma_ui/view/meetings_page.dart';
import 'package:figma_ui/view/orders.dart';
import 'package:figma_ui/view/checkin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (Image.asset('assets/tracking.png')),
        ),
        actions: [
          IconButton(
            icon: SizedBox(width: 25, child: Image.asset("assets/noti.png")),
            // iconSize: 5,
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        // Wrap the body with SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'James Anderson',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 34, 67, 174),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Lorem ipsum',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 34, 67, 174),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 240),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex:
                      3, // Allocate more space to the Metrics Overview container
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Metrics Overview",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    width: 50,
                                    child:
                                        Image.asset("assets/order_icon.png")),
                                SizedBox(height: 8),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderScreen()));
                                    },
                                    child: Text('Orders: 15',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500))),
                              ],
                            ),
                            SizedBox(width: 16),
                            Column(
                              children: [
                                SizedBox(
                                    width: 50,
                                    child:
                                        Image.asset("assets/meeting_icon.png")),
                                SizedBox(height: 8),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ScheduledMeetingsScreen()));
                                  },
                                  child: Text('Meetings: 5',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  flex: 2, // Allocate less space to the Collections container
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Collections',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CollectionsScreen()));
                          },
                          icon: SizedBox(
                              width: 50,
                              child: Image.asset("assets/collect_icons.png")),
                        ),
                        SizedBox(height: 8),
                        Text('₹50,000',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CheckinPage()));
                  },
                  child: Text('Check In'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color.fromARGB(255, 1, 1, 1),
                    side: BorderSide(color: const Color.fromARGB(255, 2, 2, 2)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Check Out',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 15, 17, 130),
                  ),
                ),
                Text(
                  "Lorem pesum \nis dummy ",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => ViewSchedule()),
                    // );
                  },
                  child: Text(
                    'View Schedule',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 15, 17, 130),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ExpensesScreen()));
                  },
                  child: Text(
                    'Add Expense',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    side: BorderSide(color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true, // Prevent ListView from taking extra space
              itemCount: 6,
              itemBuilder: (context, index) {
                final items = [
                  {'title': 'Orders', 'value': '\$0'}, //'route': OrdersPage()
                  {'title': 'Meetings', 'value': '5'}, //MeetingsPage()},
                  {
                    'title': 'Clients',
                    'value': '2',
                  }, //'route': ClientsPage()},
                  {
                    'title': 'Expenses',
                    'value': '\$25',
                  }, // 'route': ExpensePage()},
                  {
                    'title': 'Collections',
                    'value': '0',
                  }, //route': CollectionPage()},
                  {
                    'title': 'Notes',
                    'value': 'Lorem'
                  }, // 'route': NotesPage()},
                ];
                return Card(
                  color: const Color.fromARGB(255, 229, 230, 232),
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(right: 280),
                      child: Column(
                        children: [
                          Text(items[index]['title']!),
                          Text(items[index]['value']!),
                        ],
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                            width: 2,
                            child: Image.asset(
                              "assets/image_line.png",
                              color: Colors.grey,
                            )),
                        SizedBox(width: 16),
                        Icon(Icons.add,
                            color: const Color.fromARGB(255, 131, 132, 133)),
                      ],
                    ),
                    onTap: () {
                      // Navigate to the respective page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                items[index]['route'] as Widget),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
