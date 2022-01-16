import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:image_picker/image_picker.dart';
typedef VoidCallback = void Function();

class ImageUploadClass extends StatefulWidget {
  const ImageUploadClass({Key? key}) : super(key: key);

  @override
  _ImageUploadClassState createState() => _ImageUploadClassState();
}

class _ImageUploadClassState extends State<ImageUploadClass> {
  
  File? _image;

  Future<void> uploadFile() async {
    String imageName = DateTime.now().microsecondsSinceEpoch.toString();
    var imageFile = FirebaseStorage.instance.ref('User images').child("$imageName.jpg");
    UploadTask task = imageFile.putFile(_image!);
    TaskSnapshot snapshot = await task;

    /// For download the image.
    final uri = await snapshot.ref.getDownloadURL();

    /// Store the image url into the firestore database.
    await FirebaseFirestore.instance.collection('images').doc().set({'img': uri});
    print(uri);
  }

  Future CameraImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.pickImage(
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
    final pickFile = await picker.pickImage(
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _image == null? CircleAvatar(
                radius: 100,
                child: Icon(Icons.account_circle_rounded, size: 200,)
              )
              : CircleAvatar(
                  radius: 100,
                  backgroundImage: FileImage(_image!),
                  // child: Icon(Icons.account_circle_rounded, size: 200,)
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
                  _CustomButton(btnText: 'Upload', onPressed: (){ uploadFile(); setState(() {
                    _image = null;
                  }); }),
                  SizedBox(width: 10,),
                  _CustomButton(
                    btnText: 'Clear',
                    onPressed: (){
                      setState(() {
                        _image = null;
                      });
                    }
                  )
                ],
              ),
              Container(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection('images').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if(snapshot.hasData){
                      return GridView.builder(
                        shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                          ),
                          physics: BouncingScrollPhysics(),
                          primary: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index){
                            QueryDocumentSnapshot networkData = snapshot.data!.docs[index];
                            return Card(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 100,
                                  backgroundImage: NetworkImage(networkData["img"]),
                                ),
                              ),
                            );
                          },
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  }
                ),
              ),
            ],
          ),
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
