// createAccount.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'EKYC.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  TextEditingController _nicController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account',
          style: TextStyle(
            color: Color(0xFF00796B), // Set the text color here
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
        iconTheme: IconThemeData(color: Color(0xFF00796B)),
      ),
      backgroundColor: Color(0xFF001F3F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30), // Spacer

              Text(
                'Create Your Account',
                style: GoogleFonts.lemon(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00796B),
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 80), // Spacer

              // Text input fields in rectangular boxes
              buildInputField('Username', _usernameController),
              buildInputField('Password', _passwordController),
              buildInputField('Confirm Password', _passwordConfirmController),
              buildInputField('NIC Number', _nicController),

              SizedBox(height: 60), // Spacer

              // Submit button
              ElevatedButton(
                onPressed: () {
                  // Handle the submit button action here
                  print('Submitted');
                  print('Username: ${_usernameController.text}');
                  print('Password: ${_passwordController.text}');
                  print('Confirm Password: ${_passwordConfirmController.text}');
                  print('NIC Number: ${_nicController.text}');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EKYC()), // Use CreateAccount
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
      ),
    );
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
