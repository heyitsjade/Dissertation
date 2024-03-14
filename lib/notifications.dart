import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Notifications'),
      ),
      backgroundColor: Color(0xFF001F3F), // Set background color here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30), // Spacer

            Text(
              'My Notifications',
              style: GoogleFonts.lemon(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00796B),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 80), // Spacer

            // Notification boxes
            NotificationBox(
                message: 'You need to renew your birth certificate!'),
            SizedBox(height: 20),
            NotificationBox(message: 'You need to renew your passport!'),
          ],
        ),
      ),
    );
  }
}

class NotificationBox extends StatelessWidget {
  final String message;

  const NotificationBox({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Set box background color here
        borderRadius: BorderRadius.circular(10), // Set box border radius here
      ),
      padding: EdgeInsets.all(16),
      child: Text(
        message,
        style: TextStyle(
          color: Color(0xFF00796B), // Set text color here
          fontSize: 18, // Set font size here
        ),
      ),
    );
  }
}
