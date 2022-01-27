import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tt/travel_app/widgets/buttons.dart';
import 'package:tt/travel_app/widgets/form_decoration.dart';
import 'package:tt/travel_app/widgets/notification_widgets.dart';
import 'package:tt/travel_app/widgets/static-variables.dart';
import 'package:tt/travel_app/widgets/travel_provider.dart';
import 'package:provider/provider.dart';

class AddTravelSpot extends StatefulWidget {
  const AddTravelSpot({Key? key}) : super(key: key);

  @override
  _AddTravelSpotState createState() => _AddTravelSpotState();
}

class _AddTravelSpotState extends State<AddTravelSpot> {
  final _formKey = GlobalKey<FormState>();

  String? selectTravelRegion;
  String? selectTravelSpot;

  File? _image;

  Future<void> uploadFile() async {
    String imageName = DateTime.now().microsecondsSinceEpoch.toString();
    var imageFile =
        FirebaseStorage.instance.ref('User images').child("$imageName.jpg");
    UploadTask task = imageFile.putFile(_image!);
    TaskSnapshot snapshot = await task;

    /// For download the image.
    final uri = await snapshot.ref.getDownloadURL();

    /// Store the image url into the firestore database.
    await FirebaseFirestore.instance
        .collection('images')
        .doc()
        .set({'img': uri});
    print(uri);
  }

  Future CameraImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.pickImage(
        source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  Future GalleryImage() async {
    final picker = ImagePicker();
    final pickFile = await picker.pickImage(
        source: ImageSource.gallery, maxHeight: 300, maxWidth: 300);
    setState(() {
      _image = File(pickFile!.path);
    });
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      action: SnackBarAction(
        label: 'ACTION',
        onPressed: () {},
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final TravelProvider travelProvider = Provider.of<TravelProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Add Travel Spot"),
        centerTitle: true,
      ),
      body: bodyUI(travelProvider),
    );
  }

  Widget bodyUI(TravelProvider travelProvider) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          _image == null
              ? ClipRRect(
                  child: Image.asset(
                    "images/Icons/gallery.png",
                    width: size.width * 0.3,
                    height: size.height * 0.3,
                    color: Colors.pinkAccent,
                    fit: BoxFit.fitHeight,
                  ),
                )
              : ClipRRect(
                  child: Image.file(
                    _image!,
                    width: size.width * 0.3,
                    height: size.height * 0.3,
                    // color: Colors.pinkAccent,
                    fit: BoxFit.fitHeight,
                  ),
                ),
          SizedBox(
            height: size.width * 0.04,
          ),
          _image == null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          CameraImage();
                        },
                        icon: Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.pinkAccent,
                        )),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    IconButton(
                        onPressed: () {
                          GalleryImage();
                        },
                        icon: Icon(
                          Icons.image,
                          size: 40,
                          color: Colors.pinkAccent,
                        ))
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cloud_upload,
                          size: 40,
                          color: Colors.pinkAccent,
                        )),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _image = null;
                          });
                        },
                        icon: Icon(
                          Icons.clear,
                          size: 40,
                          color: Colors.pinkAccent,
                        ))
                  ],
                ),
          Divider(height: 50),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: FormDecoration.copyWith(label: Text("Spot Name")),
                  onChanged: (value) {
                    setState(() {
                      travelProvider.travelModel.spotName = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Fill The Spot Name";
                    }
                    return null;
                  },
                ),
                SizedBox(height: size.width * 0.04),
                dropdownMenu(
                    value: selectTravelRegion,
                    size: size,
                    label: "Select Region",
                    items: dropdownMenuGenerator(
                        StaticVariables.TravelRegion, size),
                    onChanged: (newValue) {
                      setState(() {
                        selectTravelSpot = null;
                        selectTravelRegion = newValue as String;
                        travelProvider.travelModel.travelSpot = null;
                        travelProvider.travelModel.travelRegion = newValue;
                      });
                    }),
                SizedBox(height: size.width * 0.04),
                dropdownMenu(
                  value: selectTravelSpot,
                  size: size,
                  label: "Select Travel Spot",
                  items: travelSpotSelector(selectTravelRegion, size),
                  onChanged: (newValue) {
                    setState(() {
                      selectTravelSpot = null;
                      selectTravelSpot = newValue as String;
                      travelProvider.travelModel.travelSpot = newValue;
                    });
                  },
                ),
                SizedBox(height: size.width * 0.04),
                TextFormField(
                  maxLines: 5,
                  decoration: FormDecoration.copyWith(
                    label: Text("Description"),
                  ),
                  onChanged: (value) {
                    setState(() {
                      travelProvider.travelModel.description = value;
                    });
                  },
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Fill The Description.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: size.width * 0.04),
                SubmitButton(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      travelProvider.loadingMgs = "Submitting information...";
                      showLoadingDialog(context, travelProvider);
                      await travelProvider.addTravelSpot(
                        context,
                        travelProvider,
                        travelProvider.travelModel,
                        _image!,
                      );
                    }
                    showMessage("Submitting information.");
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.width * 0.04
          ),
        ],
      ),
    );
  }

  Container dropdownMenu(
      {required Size size,
      required String label,
      required String? value,
      required List<DropdownMenuItem<String>>? items,
      required ValueChanged onChanged}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.greenAccent.withOpacity(0.2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.black, width: 3),
      ),
      width: size.width,
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
        value: value,
        hint: Container(
          width: size.width * 0.75,
          child: Text(
            label,
            style: TextStyle(fontSize: size.height * 0.023),
          ),
        ),
        items: items,
        onChanged: onChanged,
      )),
    );
  }

  List<DropdownMenuItem<String>>? travelSpotSelector(
      String? region, Size size) {
    if (region == null) {
      return null;
    } else if (region == 'Travel Bangladesh') {
      return dropdownMenuGenerator(StaticVariables.bdDistrict, size);
    } else if (region == 'Travel World') {
      return dropdownMenuGenerator(StaticVariables.allCountries, size);
    }
    return null;
  }

  List<DropdownMenuItem<String>> dropdownMenuGenerator(
      List<String> list, Size size) {
    return list.map((selectTravelSpot) {
      return DropdownMenuItem(
        child: Container(
          width: size.width * 0.75,
          child: Text(
            selectTravelSpot,
            style: TextStyle(color: Colors.green, fontSize: 16),
          ),
        ),
        value: selectTravelSpot,
      );
    }).toList();
  }
}
