// ekyc.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Selfie.dart';
import 'NICPic.dart';
import 'homepage.dart';

class EKYC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EKYC', style: TextStyle(color: Color(0xFF00796B))),
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Color(0xFF00796B)),
      ),
      backgroundColor: Color(0xFF001F3F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30), // Spacer

            Text(
              'E-KYC',
              style: GoogleFonts.lemon(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00796B),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 80), // Spacer

            // Text input fields for first name, middle names, and last name
            buildInputField('First Name'),
            buildInputField('Middle Names'),
            buildInputField('Last Name'),

            SizedBox(height: 130), // Spacer

            // Buttons for taking a selfie and a picture of NIC
            ElevatedButton(
              onPressed: () {
                // Handle taking a selfie action
                print('Take a selfie');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Selfie()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
              ),
              child: Text('Take a selfie',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  )),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Handle taking a picture of NIC action
                print('Take a picture of NIC');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NICPic()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
              ),
              child: Text('Take a picture of your NIC',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  )),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                // Handle taking a picture of NIC action
                print('Next');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
              ),
              child: Text('Next',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInputField(String label) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF00796B)), // Border color
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        style: TextStyle(color: Color(0xFF00796B)),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Color(0xFF00796B)),
          contentPadding: EdgeInsets.all(12),
          border: InputBorder.none, // Hide the default border
        ),
      ),
    );
  }
}
