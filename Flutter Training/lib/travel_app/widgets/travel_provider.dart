import 'dart:io';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:tt/travel_app/travel_models/travel_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class TravelProvider extends ChangeNotifier {
  TravelModel _travelModel = TravelModel();

  TravelModel get travelModel => _travelModel;

  set travelModel(TravelModel value) {
    _travelModel = value;
    notifyListeners();
  }

  List<TravelModel> _travelSpotList = [];
  String? _loadingMgs;

  List<TravelModel> get travelSpotList => _travelSpotList;

  // set travelSpotList(List<TravelModel> value) {
  //   _travelSpotList = value;
  //   notifyListeners();
  // }

  String get loadingMgs => _loadingMgs!;

  set loadingMgs(String value) {
    _loadingMgs = value;
    notifyListeners();
  }

  Future<void> addTravelSpot(
      BuildContext context,
      TravelProvider travelProvider,
      TravelModel travelModel,
      File imageFile) async {
    final int timeStamp = DateTime.now().microsecondsSinceEpoch;
    String id = travelModel.spotName! + timeStamp.toString();

    final String submitDate = DateFormat("dd-MMM-yyyy/hh:mm:aa")
        .format(DateTime.fromMicrosecondsSinceEpoch(timeStamp));

    firebase_storage.Reference storageReference = firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child('Travel Spot Img')
        .child(id);

    firebase_storage.UploadTask storageUploadTask =
        storageReference.putFile(imageFile);

    firebase_storage.TaskSnapshot taskSnapshot;

    storageUploadTask.then((value) {
      taskSnapshot = value;

      taskSnapshot.ref.getDownloadURL().then((newImageDownloadUrl) {
        final imageLink = newImageDownloadUrl;

        FirebaseFirestore.instance.collection("travel_spots").doc(id).set({
          'id': id,
          'spotName': travelModel.spotName,
          'imageLink': imageLink,
          'description': travelModel.description,
          'travelRegion': travelModel.travelRegion,
          'travelSpot': travelModel.travelSpot,
          'timeStamp': timeStamp.toString(),
          'submitDate': submitDate,
        });

        Navigator.pop(context);
      }, onError: (error) {
        Navigator.pop(context);

        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(error.toString())));
      });
    }, onError: (error) {
      Navigator.pop(context);

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error.toString())));
    });
  }

  Future<void> getTravelSpot(String travelSpot) async {
    print("I am working");
    try {
      await FirebaseFirestore.instance
          .collection('travel_spots')
          .where('travelSpot', isEqualTo: travelSpot)
          .get()
          .then((snapShot) {
        _travelSpotList.clear();
        snapShot.docChanges.forEach((element) {
          TravelModel travelModels = TravelModel(
            id: element.doc['id'],
            spotName: element.doc['spotName'],
            imageLink: element.doc['imageLink'],
            description: element.doc['description'],
            travelRegion: element.doc['travelRegion'],
            travelSpot: element.doc['travelSpot'],
            timeStamp: element.doc['timeStamp'],
            submitDate: element.doc['submitDate']
          );
          _travelSpotList.add(travelModels);
        });
      });

      print("Length: " + _travelSpotList.length.toString());
      notifyListeners();
    } catch (error) {
      print(error.toString());
    }
  }
}
