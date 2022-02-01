import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_guide/travel_app_reboot/travel_models/travel_model.dart';

class TravelProvider extends ChangeNotifier {
  final List<TravelModel> _travelDestinationList = [];

  List<TravelModel> get travelDestinationList => _travelDestinationList;

  Future<void> addTravelDestination(
      {required BuildContext context,
      required TravelModel travelModel,
      required File image}) async {
    final timeStamp = DateTime.now().microsecondsSinceEpoch;

    String id = travelModel.destinationName! + timeStamp.toString();

    final submitDate = DateFormat("dd-MMM-yyyy/hh:mm:aa")
        .format(DateTime.fromMicrosecondsSinceEpoch(timeStamp));

    // Process of uploading image to Firebase storage.

    // Creating directory for the image.
    firebase_storage.Reference reference = firebase_storage
        .FirebaseStorage.instance
        .ref()
        .child('Travel App Img')
        .child(id);

    // Uploading image.
    firebase_storage.UploadTask uploadTask = reference.putFile(image);
    firebase_storage.TaskSnapshot taskSnapshot;

    uploadTask.then((value) {
      taskSnapshot = value;

      // After Successfully uploading the image get the link of that image.
      taskSnapshot.ref.getDownloadURL().then((imageDownloadLink) {
        final imageLink = imageDownloadLink;

        // Now that image is uploaded and also have the image link from cloud,
        // Now save everything in firebase database.
        FirebaseFirestore.instance
            .collection("Travel_Destinations")
            .doc(id)
            .set({
          'id': id,
          'destinationName': travelModel.destinationName,
          'imageLink': imageLink,
          'description': travelModel.description,
          'travelRegion': travelModel.travelRegion,
          'travelSpot': travelModel.travelSpot,
          'timeStamp': timeStamp.toString(),
          'submitDate': submitDate,
        });

        Navigator.pop(context);

        // Error message if anything goes wrong while getting the image link.
      }, onError: (error) {
        Navigator.pop(context);

        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(error.toString())));
      });

      // Error message if anything goes wrong while uploading image.
    }, onError: (error) {
      Navigator.pop(context);

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(error.toString())));
    });
  }

  Future<void> getTravelDestinationList({required BuildContext context,required String travelSpot}) async {
    try {
      await FirebaseFirestore.instance
          .collection('Travel_Destinations')
          .where('travelSpot', isEqualTo: travelSpot)
          .get()
          .then((snapShot) {
            _travelDestinationList.clear();

            snapShot.docChanges.forEach((element) {
              TravelModel travelModel = TravelModel(
                id: element.doc['id'],
                destinationName: element.doc['destinationName'],
                imageLink: element.doc['imageLink'],
                description: element.doc['description'],
                travelRegion: element.doc['travelRegion'],
                travelSpot: element.doc['travelSpot'],
                timeStamp: element.doc['timeStamp'],
                submitDate: element.doc['submitDate']
              );
              _travelDestinationList.add(travelModel);
            });
      });
      print("Length of items: " + _travelDestinationList.length.toString());
      notifyListeners();
      // Navigator.pop(context);

    } catch (error) {
      print(error.toString());
    }
  }
}
