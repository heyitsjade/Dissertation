// login.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'homepage.dart';

class Login extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                'Login',
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

              SizedBox(height: 60), // Spacer

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Handle the login button action here
                  print('Logged in');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  ),
                ),
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
