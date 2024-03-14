import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyDocumentsPage extends StatelessWidget {
  final Random _random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verify Documents'),
      ),
      backgroundColor: Color(0xFF001F3F), // Set background color here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30), // Spacer

            Text(
              'Verify Documents',
              style: GoogleFonts.lemon(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00796B),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 80), // Spacer

            // Document buttons
            DocumentButton(title: 'Document 1', isEnabled: _random.nextBool()),
            SizedBox(height: 20),
            DocumentButton(title: 'Document 2', isEnabled: _random.nextBool()),
            SizedBox(height: 20),
            DocumentButton(title: 'Document 3', isEnabled: _random.nextBool()),
            SizedBox(height: 20),
            DocumentButton(title: 'Document 4', isEnabled: _random.nextBool()),
            SizedBox(height: 20),
            DocumentButton(title: 'Document 5', isEnabled: _random.nextBool()),
            SizedBox(height: 20),
            DocumentButton(title: 'Document 6', isEnabled: _random.nextBool()),
            SizedBox(height: 20),
            DocumentButton(title: 'Document 7', isEnabled: _random.nextBool()),
          ],
        ),
      ),
    );
  }
}

class DocumentButton extends StatelessWidget {
  final String title;
  final bool isEnabled;

  const DocumentButton({required this.title, required this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled
          ? () {
              // Handle button press
              print('Pressed $title');
            }
          : null,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          isEnabled
              ? Color(0xFF00796B)
              : Colors.grey, // Set background color here
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white, // Set text color here
          fontSize: 18, // Set font size here
        ),
      ),
    );
  }
}
