import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:image_picker/image_picker.dart';

class PictureOperations extends StatefulWidget {
  const PictureOperations({Key? key}) : super(key: key);

  @override
  State<PictureOperations> createState() => _PictureOperationsState();
}

class _PictureOperationsState extends State<PictureOperations> {
  double get height => MediaQuery.of(context).size.height;
  File? imageFile;
  final picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Report Broken Product"),
        ),
        body: Center(
          child: imageFile == null
              ? const Text('Image Not Selected')
              : Image.file(imageFile!),
        ),
        floatingActionButton: Column(
          children: [
            const Spacer(),
            FloatingActionButton.extended(
              label: const Text("Take a photo"),
              icon: const Icon(Icons.photo_camera),
              onPressed: () => onImageButtonPressed(ImageSource.camera),
            ),
            SizedBox(height: height * 0.01),
            FloatingActionButton.extended(
              label: const Text("Choose from gallery"),
              icon: const Icon(Icons.photo_library),
              onPressed: () => onImageButtonPressed(ImageSource.gallery),
            ),
          ],
        ));
  }

  void onImageButtonPressed(ImageSource source) async {
    try {
      await getImage(source);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  Future getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    setState(() {
      imageFile = File(pickedFile!.path);
    });
    GallerySaver.saveImage(imageFile!.path);
  }
}
