import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
void showSnackBar({required BuildContext context, required String content}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

// ignore: body_might_complete_normally_nullable
Future<File?> pickImagrFromGallery(BuildContext context) async {
  // ignore: unused_local_variable
  File? image;
  try {
    // ignore: unused_local_variable
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  } catch (e) {
    showSnackBar(context: context, content: e.toString());
  }
  return image;
}
