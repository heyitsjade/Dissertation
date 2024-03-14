import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'createAccount.dart';
import 'login.dart';
import 'loginEntity.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MoNIC',
          style: TextStyle(
            color: Color(0xFF00796B),
          ),
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      backgroundColor: Color(0xFF001F3F),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text
                Text(
                  'Welcome to your Identity Vault',
                  style: GoogleFonts.lemon(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF00796B),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 0), // Add more spacing

                // Image
                Padding(
                  padding: EdgeInsets.only(top: 0.0),
                  child: Image.asset(
                    'assets/IDCard.png', // Replace with your image asset path
                    height: 500,
                    width: 500,
                  ),
                ),
                // SizedBox(height: 0), // Add some spacing

                // Buttons
                ElevatedButton(
                  onPressed: () {
                    // Handle the first button action here
                    print('First Button Pressed');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            CreateAccount(), // Use CreateAccount
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFFFFFFF)), // Replace with your hex color value
                  ),
                  child: Text('Create Account',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF00796B), // Set the text color here
                      )),
                ),
                SizedBox(height: 8), // Add some spacing
                ElevatedButton(
                  onPressed: () {
                    // Handle the second button action here
                    print('Second Button Pressed');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(), // Use CreateAccount
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFFFFFFF)), // Replace with your hex color value
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
          Positioned(
            // Positioned widget to position the button
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Handle button press
                print('Switch to Entity Platform');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginEntity(), // Use CreateAccount
                  ),
                );
              },
              backgroundColor: Color(0xFF00796B),
              child: Icon(Icons.switch_account),
            ),
          ),
        ],
      ),
    );
  }
}
