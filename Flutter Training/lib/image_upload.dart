import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
typedef VoidCallback = void Function();

class ImageUploadClass extends StatefulWidget {
  const ImageUploadClass({Key? key}) : super(key: key);

  @override
  _ImageUploadClassState createState() => _ImageUploadClassState();
}

class _ImageUploadClassState extends State<ImageUploadClass> {
  
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
      appBar: AppBar(
        title: Text('Image Uploader'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _image == null? CircleAvatar(
              radius: 100,
              child: Icon(Icons.account_circle_rounded, size: 200,)
            )
            :ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.file(_image!),
            ),
            SizedBox(height: 20,),
            _image == null? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _CustomButton(btnText: 'From Camera', onPressed: CameraImage),
                SizedBox(width: 10,),
                _CustomButton(btnText: 'From File', onPressed: GalleryImage),
              ],
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _CustomButton(btnText: 'Upload', onPressed: (){}),
                SizedBox(width: 10,),
                _CustomButton(btnText: 'Clear', onPressed: (){ setState(() { _image = null; }); })
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _CustomButton({required String btnText, required VoidCallback onPressed}){
    return ElevatedButton(
        onPressed: (){
          onPressed();
        },
        child: Text(btnText)
    );
  }

}
