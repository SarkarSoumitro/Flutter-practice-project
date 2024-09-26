import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  File? _imageFile;
  final picker = ImagePicker();
  bool _isLoading = false;
  String _imageUrl = '';

  // Function to pick image from camera
  Future<void> _pickImage() async {
    setState(() {
      _imageUrl = ''; // Clear the image URL when capturing a new image
    });

    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  // Function to enhance image
  Future<File?> _enhanceImage(File imageFile) async {
    final img.Image? originalImage =
        img.decodeImage(await imageFile.readAsBytes());
    if (originalImage == null) return null;

    // Adjusting brightness and contrast
    img.Image enhancedImage =
        img.adjustColor(originalImage, brightness: 0.8, contrast: 1.2);

    // Save the enhanced image back to the file asynchronously
    final newFile = File('${imageFile.path}_enhanced.jpg');
    await newFile.writeAsBytes(img.encodeJpg(enhancedImage));
    return newFile;
  }

  // Function to upload image to ImgBB API
  Future<void> _uploadImage(File imageFile) async {
    setState(() {
      _isLoading = true;
    });

    final url =
        "https://api.imgbb.com/1/upload?key=c5e2ed9e352e398b9f88b61dba5f82b2"; // Replace with your API key
    var request = http.MultipartRequest('POST', Uri.parse(url));

    request.files.add(
      await http.MultipartFile.fromPath('image', imageFile.path),
    );

    try {
      var response = await request.send();
      var responseData = await response.stream.bytesToString();
      var result = jsonDecode(responseData);

      if (response.statusCode == 200) {
        setState(() {
          _isLoading = false;
          _imageUrl = result['data']['url']; // Corrected access
        });
      } else {
        setState(() {
          _isLoading = false;
          _imageUrl = 'Error: ${result['error']}'; // Handle errors
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _imageUrl = 'Failed to upload image: $e'; // Handle exceptions
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "H O S T     it",
          style: GoogleFonts.acme(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 40),
        child: Center(
          child: _isLoading
              ? const CircularProgressIndicator()
              : ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    _imageFile == null
                        ? Center(
                            child: Text(
                            "No Image is Selected !",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ))
                        : Image.file(
                            _imageFile!,
                            height: 300,
                            width: 300,
                          ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: _pickImage,
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade600,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(4.0, 4.0),
                            ),
                            BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1,
                              blurRadius: 10,
                              offset: const Offset(-4.0, -4.0),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.grey[300],
                        ),
                        child: const Center(
                          child: Text(
                            "Capture Image",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    if (_imageFile != null)
                      GestureDetector(
                        onTap: () async {
                          final enhancedImage =
                              await _enhanceImage(_imageFile!);
                          if (enhancedImage != null) {
                            await _uploadImage(enhancedImage);
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(4.0, 4.0),
                              ),
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(-4.0, -4.0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey[300],
                          ),
                          child: const Center(
                            child: Text(
                              "Enhance & Upload Image",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (_imageUrl.isNotEmpty)
                      Column(
                        children: [
                          const SizedBox(height: 20),
                          const Text("Uploaded Image URL:"),
                          SelectableText(
                            _imageUrl,
                            style: const TextStyle(color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                  ],
                ),
        ),
      ),
    );
  }
}
