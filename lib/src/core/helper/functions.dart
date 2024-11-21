import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'utlis.dart';

bool get isLanguageSelected => settingBox.containsKey('language');

bool get isIntroShown => settingBox.containsKey('intro') && settingBox.get('intro') == true;

bool get isLoggedIn => FirebaseAuth.instance.currentUser != null;


void initializeScreen()  {
  if (!isLanguageSelected) {
    Get.offAllNamed('/languages',arguments: false);
  } else if (!isIntroShown) {
    Get.offAllNamed('/welcome');
  } else if (isLoggedIn) {
    Get.offAllNamed('/home');
  } else {
     Get.offAllNamed('/user_type');

  }
}


void editProfile(screenHeight, context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      enableDrag: true,
      builder: (context) => const Center() //EditProfileWidget(),
      );
}

Future<XFile?> pickImage() async {
  final ImagePicker picker = ImagePicker();
  XFile? image = await picker.pickImage(source: ImageSource.gallery);
  return image;
}






/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> determinePosition() async {
  final permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    } else {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
  }
  return Geolocator.getCurrentPosition();
}

getdistanceBetween(double lat1, double long1, double lat2, double long2) {
  double distance = Geolocator.distanceBetween(lat1, long1, lat2, long2);
  double distanceInKm = distance / 1000;
  return distanceInKm.toStringAsFixed(2);
}