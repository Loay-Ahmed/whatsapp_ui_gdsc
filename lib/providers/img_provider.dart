import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class ImgProvider extends ChangeNotifier {
  File? _imageFile;

  File? get imageFile => _imageFile;

  Future<void> pickImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.camera, // Or ImageSource.gallery
    );
    if (pickedFile != null) {
      _imageFile = File(pickedFile.path);
      notifyListeners(); // Notify UI of changes
    }
  }
}
