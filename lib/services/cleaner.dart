import 'package:flutter/material.dart';
import 'package:kushi3/home/home1.dart';
import 'package:kushi3/home/profile.dart';

void main() {
  runApp(MyCleani());
}

class MyCleani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DoctorProfilePage(),
    );
  }
}

class DoctorProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Cleaning Services'),
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
              // Settings button action
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Profile Picture and Name
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                        'assets/doctor.jpg'), // Replace with the correct path
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Anamika Das',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),

                  // Information Section
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildInfoTile('AGE', '35', 'YEARS'),
                            _buildInfoTile('GENDER', 'F', 'FEMALE'),
                          ],
                        ),
                        Divider(thickness: 1, color: Colors.grey[300]),
                        _buildInfoTile('EXPERIENCE', '12', 'YEARS'),
                        SizedBox(height: 16),

                        // Specialization Section
                      ],
                    ),
                  ),

                  SizedBox(height: 16),

                  // Booking Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Book on Call action
                        },
                        icon: Icon(Icons.call),
                        label: Text("BOOK ON CALL"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Book on App action
                        },
                        icon: Icon(Icons.app_registration),
                        label: Text("BOOK ON APP"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          // Floating Action Buttons
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Emergency action
              },
              child: Icon(Icons.emergency),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Safety action
              },
              child: Icon(Icons.health_and_safety_outlined),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
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
                      return MyApp();
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
                Text(
                  'Personal Information for Doctor',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build info tiles
  Widget _buildInfoTile(String title, String value, String subtitle,
      {IconData? icon}) {
    return Column(
      children: [
        icon != null
            ? Icon(icon, color: Colors.blue[900], size: 28)
            : Text(
                value,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(subtitle, style: TextStyle(fontSize: 10)),
      ],
    );
  }

// Helper method to build specialization tiles
}
