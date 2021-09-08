import 'dart:io';
import 'package:image_picker/image_picker.dart';

class DatabaseLayananService {
  static Future<File> getImageGallery() async {
    var image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 10);

    return image != null ? image : null;
  }
}
