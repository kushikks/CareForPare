import 'package:flutter/material.dart';
import 'package:kushi3/home/home1.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicalInfoPage(),
    );
  }
}

class MedicalInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: Text('Medical Information'),
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
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Icon
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              // Text Fields for information
              _buildInfoField(label: 'NAME:'),
              _buildInfoField(label: 'AGE:'),
              _buildInfoField(label: 'CONTACT NO OF FAMILY:'),
              _buildInfoField(label: 'ALLERGIES:'),
              _buildInfoField(label: 'MEDICAL HISTORY:'),
              SizedBox(height: 8),
              // Current Prescription Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Text(
                      'CURRENT PRESCRIPTION:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        // Add prescription action
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.file_present, color: Colors.white),
                      onPressed: () {
                        // View prescription action
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Personal Information for Doctor
            ],
          ),
        ),
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
                Text(
                  'Information for doctor',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget to build each info field
  Widget _buildInfoField({required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.blue[900],
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(color: Colors.white),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
