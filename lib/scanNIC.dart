import 'package:flutter/material.dart';
import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'docListScan.dart';

class ScanNIC extends StatefulWidget {
  @override
  _ScanNICState createState() => _ScanNICState();
}

class _ScanNICState extends State<ScanNIC> {
  TextEditingController _accessCodeController = TextEditingController();
  String tagId = "Scan an NFC tag";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan NIC'),
      ),
      backgroundColor: Color(0xFF001F3F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30), // Spacer

            Text(
              'Scan NIC',
              style: GoogleFonts.lemon(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFF00796B),
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 80), // Spacer

            // Access Code input field
            buildInputField('Access Code', _accessCodeController),

            SizedBox(height: 40), // Spacer

            // Scan button
            ElevatedButton(
              onPressed: () {
                startNFC(); // Call startNFC function
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => VerifyDocumentsPage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color(0xFFFFFFFF),
                ),
              ),
              child: Text(
                'Scan',
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

  void startNFC() async {
    try {
      NFCTag tag = await FlutterNfcKit.poll();
      setState(() {
        tagId = "Tag ID: ${tag.id}";
      });
    } catch (e) {
      print(e);
      setState(() {
        tagId = "Error reading NFC tag.";
      });
    }
  }

  Widget buildInputField(String label, TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF00796B)), // Border color
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
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
