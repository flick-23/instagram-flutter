import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source, {int quality = 100}) async {
  final ImagePicker _imagePicker = ImagePicker();
  final XFile? _file =
      await _imagePicker.pickImage(source: source, imageQuality: quality);

  if (_file != null) {
    return await _file.readAsBytes();
  }
  print('No image selected');
}

showSnackBar(String content, BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}
