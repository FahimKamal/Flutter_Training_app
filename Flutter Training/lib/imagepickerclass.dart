import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerClass extends StatefulWidget {
  const ImagePickerClass({Key? key}) : super(key: key);

  @override
  _ImagePickerClassState createState() => _ImagePickerClassState();
}

class _ImagePickerClassState extends State<ImagePickerClass> {
  File? _image;

  Future CameraImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.getImage(
      source: ImageSource.camera,
      maxHeight: 300,
      maxWidth: 300
    );
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  Future GalleryImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.getImage(
        source: ImageSource.gallery,
        maxHeight: 300,
        maxWidth: 300
    );
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker"), centerTitle: true,),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 300,
              width: 300,
              child: _image == null? Text("Pick your Picture") :Image.file(_image!),
            ),
            RaisedButton(
                onPressed: CameraImage,
              child: Icon(Icons.camera),
            ),
            RaisedButton(
              onPressed: GalleryImage,
              child: Icon(Icons.image),
            )
          ],
        ),
      ),
    );
  }
}
