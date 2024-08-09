import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? file;
  List<XFile>? files;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Center(
                child: file == null
                    ? const Text(
                        'Image not picked',
                        style: TextStyle(color: Colors.black),
                      )
                    : Image.file(
                        File(file!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo =
                      await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                  print('Image picked');
                  print(photo!.path);
                },
                child: const Text('Pick Image')),
            ElevatedButton(
                onPressed: () async {
                  final List<XFile> photos = await _picker.pickMultiImage();

                  await _picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    files = photos;
                  });
                  print('Image picked');
                  for (int i = 0; i < files!.length; i++) {
                    print(files![i].path);
                  }
                },
                child: const Text('Pick Imags'))
          ],
        ),
      ),
    );
  }
}
