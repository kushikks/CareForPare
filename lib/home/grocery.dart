import 'package:flutter/material.dart';
import 'package:kushi3/home/home1.dart';
import 'package:kushi3/home/profile.dart';

void main() {
  runApp(MyGrocery());
}

class MyGrocery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Delivery App'),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              // Language button action
            },
          ),
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {
              // Help button action
            },
          ),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyProfile();
                }));
              }),
        ],
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Nearest Grocery Store Section
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/grocery_store.jpg'), // Add your grocery image in assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'NEAREST GROCERY STORE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                // Delivery Aide Section
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(
                            'assets/delivery_aide.jpg'), // Add your delivery aide image in assets
                      ),
                      SizedBox(height: 8),
                      Text(
                        'YOUR DELIVERY AIDE',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                // Call Delivery Aide Button
                ElevatedButton(
                  onPressed: () {
                    // Call Delivery Aide action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Updated parameter
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text(
                    'CALL DELIVERY AIDE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'OR DELIVERY AIDE WILL CALL YOU WITHIN 10 MINUTES AND CALL WILL BE RECORDED',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Spacer(),
                SizedBox(height: 16),
              ],
            ),
          ),
          // Floating Action Buttons
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Action for the first button
              },
              child: Icon(Icons.emergency),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Action for the second button
              },
              child: Icon(Icons.health_and_safety_outlined),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.home, color: Colors.white),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                ),
                Text('Home', style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.contact_page, color: Colors.white),
                  onPressed: () {},
                ),
                Text('Information for doctor',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
