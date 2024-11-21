import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';


class LocationPickController extends GetxController{
  

  var location = "".obs;
  var position = LatLong(0, 0).obs;


  @override
  void onInit() {
    super.onInit();
  }

  void updateUi({required String slocation,required LatLong sposition}){
    location.value = slocation;
    position.value = sposition;
    update();
    Get.back();
  }


 

}