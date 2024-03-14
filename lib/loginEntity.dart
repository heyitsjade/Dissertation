import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'entityOptions.dart';

class LoginEntity extends StatelessWidget {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _accessCodeController = TextEditingController();
  String _selectedEntity = 'Dummy Entity'; // Initial value for dropdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entity Platform'),
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
                'Entity Platform',
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
              buildInputField('Access Code', _accessCodeController),

              SizedBox(height: 20), // Spacer

              // Dropdown for entity selection
              buildEntityDropdown(),

              SizedBox(height: 60), // Spacer

              // Login button
              ElevatedButton(
                onPressed: () {
                  // Handle the login button action here
                  print('Logged in as entity');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          EntityOptions(), // Use CreateAccount
                    ),
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

  Widget buildEntityDropdown() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF00796B)), // Border color
        borderRadius: BorderRadius.circular(10), // Border radius
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButtonFormField(
        value: _selectedEntity,
        dropdownColor: const Color.fromARGB(255, 102, 101, 101),
        items: [
          DropdownMenuItem(
            value: 'Dummy Entity',
            child: Text(
              'Dummy Entity 1',
              style: TextStyle(color: Colors.white),
            ),
          ),
          DropdownMenuItem(
            value: 'Dummy Entity 2',
            child: Text(
              'Dummy Entity 2',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        onChanged: (value) {
          // Handle dropdown value change here
          print('Selected entity: $value');
          _selectedEntity = value.toString();
        },
        decoration: InputDecoration(
          labelText: 'Entity',
          labelStyle: TextStyle(color: Color(0xFF00796B)),
          border: InputBorder.none, // Hide the default border
        ),
      ),
    );
  }
}
