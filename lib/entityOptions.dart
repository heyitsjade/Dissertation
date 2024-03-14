import 'package:flutter/material.dart';
import 'entityDocListCreate.dart';
import 'entityDocListEdit.dart';
import 'entityDocListDelete.dart';

class EntityOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFF001F3F),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                  print('Create New Document');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyDocumentsPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(60), // Adjust the height as needed
                  ),
                ),
                child: Text(
                  'Create New Document',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                  print('Edit Existing Document');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditDocs()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(60), // Adjust the height as needed
                  ),
                ),
                child: Text(
                  'Edit Existing Document',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                  print('Delete Document');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeleteDocs()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(60), // Adjust the height as needed
                  ),
                ),
                child: Text(
                  'Delete Document',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                  print('Send Request');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(60), // Adjust the height as needed
                  ),
                ),
                child: Text(
                  'Send Request',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                  print('Review Request');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(60), // Adjust the height as needed
                  ),
                ),
                child: Text(
                  'Review Request',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF00796B), // Set the text color here
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle button action here
                  print('View Received Documents');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFFFFFFF),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size.fromHeight(60), // Adjust the height as needed
                  ),
                ),
                child: Text(
                  'View Received Documents',
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
}
