import 'package:flutter/material.dart';
import 'package:kushi3/home/grocery.dart';
import 'package:kushi3/home/medicine.dart';
import 'package:kushi3/home/profile.dart';
import 'package:kushi3/home/householdchore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Assistant',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Assistant"),
        actions: [
          IconButton(icon: Icon(Icons.language), onPressed: () {}),
          IconButton(icon: Icon(Icons.help), onPressed: () {}),
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
          // Main page content in a Column
          Column(
            children: [
              // Row 1: Add Smart Watch and Pill Reminder
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CategoryItem(
                          title: "ADD SMART WATCH",
                          imagePath: "assets/images/smartwatch.png",
                          onTap: () {}),
                    ),
                    Expanded(
                      child: CategoryItem(
                          title: "PILL REMINDER",
                          imagePath: "assets/images/pillreminder.png",
                          onTap: () {}),
                    ),
                  ],
                ),
              ),
              // Row 2: Medical Requirements
              Expanded(
                child: CategoryItem(
                    title: "MEDICAL REQUIREMENTS",
                    imagePath: "assets/images/medical.png",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyMeds();
                      }));
                    }),
              ),
              // Row 3: Grocery Shopping
              Expanded(
                child: CategoryItem(
                    title: "GROCERY SHOPPING",
                    imagePath: "assets/images/grocery.png",
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return MyGrocery();
                      }));
                    }),
              ),
              // Row 4: Household Chores
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: CategoryItem(
                          title: "HOUSEHOLD CHORES",
                          imagePath: "assets/images/chores.png",
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MyHouse();
                            }));
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Overlay buttons with Positioned widgets
          Positioned(
            bottom: 20,
            left: 20,
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.emergency),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {},
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
                  onPressed: () {},
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

class CategoryItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback onTap;

  CategoryItem({
    required this.title,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(imagePath, height: 90, width: 300),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
