// homepage.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'scanNIC.dart';
import 'docList.dart';
import 'notifications.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      backgroundColor: Color(0xFF001F3F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 0), // Spacer

            Text(
              'Welcome to your Identity Vault',
              style: GoogleFonts.lemon(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00796B),
              ),
              textAlign: TextAlign.center,
            ),

            Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: Image.asset(
                'assets/IDCard.png', // Replace with your image asset path
                height: 500,
                width: 500,
              ),
            ),

            SizedBox(height: 20), // Spacer

            // View My Documents button
            ElevatedButton(
              onPressed: () {
                // Handle view my documents button action
                print('View My Documents');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyDocumentsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFFFFFFF),
                ),
              ),
              child: Text(
                'View My Documents',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00796B),
                ),
              ),
            ),

            SizedBox(height: 10), // Spacer

            // View My Notifications button
            ElevatedButton(
              onPressed: () {
                // Handle view my notifications button action
                print('View My Notifications');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFFFFFFF),
                ),
              ),
              child: Text(
                'View My Notifications',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00796B),
                ),
              ),
            ),

            SizedBox(height: 10), // Spacer

            // Scan NIC button
            ElevatedButton(
              onPressed: () {
                // Handle scan NIC button action
                print('Scan NIC');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScanNIC()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFFFFFFF),
                ),
              ),
              child: Text(
                'Scan NIC',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF00796B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
