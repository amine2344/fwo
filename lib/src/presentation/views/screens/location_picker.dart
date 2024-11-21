import 'package:flutter/material.dart';
import 'package:fwo/src/presentation/logic/controllers/location_pick_controller.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';



class LocationPicker extends StatelessWidget {
  LocationPicker({super.key});

  LocationPickController _locationPickController = Get.find(tag:"location");


  Future<LatLong> getCurrentLocation() async{
    
    try {
          Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.medium,timeLimit: Duration(seconds: 5));
          return LatLong(position.latitude, position.longitude);
    } catch (e) {
      print("error $e");
    }
    return LatLong(52.376372, 4.908066);

  }

  @override
  Widget build(BuildContext context) {
     return  Material(
       child: FutureBuilder<LatLong>(
         future:getCurrentLocation(),
        builder: (BuildContext context, AsyncSnapshot<LatLong> snapshot) {
          if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            if(snapshot.data==null){
              print('not initialized');
            }else{
              print("initilized");
            }
            return  FlutterLocationPicker(
              onError: (e){
                print(e);
              },
              
            mapAnimationDuration: Duration(milliseconds: 300),
            selectLocationButtonHeight: 50,
            locationButtonBackgroundColor: Colors.green.withOpacity(.5),
            zoomButtonsBackgroundColor: Colors.green.withOpacity(.5),
            selectLocationButtonLeadingIcon: Icon(Icons.check,color: Colors.white,size: 25,),
            markerIcon: Icon(Icons.location_on,color: Colors.redAccent,size: 50,),
            selectLocationButtonText: "Select Location",
            selectedLocationButtonTextStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),
            selectLocationButtonStyle: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.green.withOpacity(.7)),
            ), 
            initZoom: 11,
            minZoomLevel: 5,
            maxZoomLevel: 16,
            initPosition: snapshot.data!,
            onPicked: (pickedData) {
              _locationPickController.updateUi(slocation: pickedData.address, sposition: pickedData.latLong);
              
            });
          }
          return Center(child: CircularProgressIndicator(color: Colors.green,));
        },
        
       )
     );
     
     /*PlacePicker(
          apiKey: "AIzaSyAnDy5hfpzcS8UP_4ZrwuRNtDaUuVIAn58",
          onPlacePicked: (result) { 
            print(result.name); 
            Navigator.of(context).pop();
          },
          initialPosition: LatLng(36.69972940,3.05761990),
          useCurrentLocation: false,
          resizeToAvoidBottomInset: false, // only works in page mode, less flickery, remove if wrong offsets
        
      );*/
      
  }
}