// Selfie.dart
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Selfie extends StatefulWidget {
  @override
  _SelfieState createState() => _SelfieState();
}

class _SelfieState extends State<Selfie> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // Get the list of available cameras
    availableCameras().then((cameras) {
      // Initialize the first camera from the list
      _controller = CameraController(cameras[0], ResolutionPreset.medium);
      // Initialize the camera controller
      _initializeControllerFuture = _controller.initialize();
    });
  }

  @override
  void dispose() {
    // Dispose of the camera controller when the widget is disposed
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Take a Selfie'),
      ),
      body: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the camera preview
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Take a picture when the user taps the button
          _takePicture();
        },
        child: Icon(Icons.camera_alt),
      ),
    );
  }

  void _takePicture() async {
    try {
      // Ensure that the camera is initialized
      await _initializeControllerFuture;

      // Construct the path where the image will be saved using the
      // path_provider plugin.
      // Directory appDocDir = await getApplicationDocumentsDirectory();
      // String filePath = '${appDocDir.path}/image.jpg';

      // Attempt to take a picture and save it to the filePath
      // await _controller.takePicture(filePath);

      // If the picture was taken, navigate to the next page
      Navigator.pushReplacementNamed(context, '/confirm_selfie');
    } catch (e) {
      // If an error occurs, log the error to the console
      print('Error taking picture: $e');
    }
  }
}
