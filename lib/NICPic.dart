// NICPic.dart
import 'package:flutter/material.dart';

class NICPic extends StatefulWidget {
  @override
  _NICPicState createState() => _NICPicState();
}

class _NICPicState extends State<NICPic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take a Picture of NIC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'NICPic Page',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality here to take a picture of NIC
              },
              child: Text('Take a Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
