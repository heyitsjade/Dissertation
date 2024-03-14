import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditDocs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Documents'),
      ),
      backgroundColor: Color(0xFF001F3F), // Set background color here
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 0), // Spacer

            Text(
              'Edit Documents',
              style: GoogleFonts.lemon(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00796B),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 80), // Spacer

            // Document buttons
            DocumentButton(title: 'Birth Certificate'),
            SizedBox(height: 20),
            DocumentButton(title: 'Passport'),
            SizedBox(height: 20),
            DocumentButton(title: 'Marriage Certificate'),
            SizedBox(height: 20),
            DocumentButton(title: 'Character Certificate'),
            SizedBox(height: 20),
            DocumentButton(title: 'Driving Permit'),
            SizedBox(height: 20),
            DocumentButton(title: 'Medical Certificate'),
            SizedBox(height: 20),
            DocumentButton(title: 'Emergency Details'),
          ],
        ),
      ),
    );
  }
}

class DocumentButton extends StatelessWidget {
  final String title;

  const DocumentButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press
        print('Pressed $title');
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          Color(0xFF00796B), // Set background color here
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
