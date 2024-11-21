import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

class OrderWidgetModel{
  String id,phone,quantity,location,fullname,date;
  
  LatLong position;

  late Timestamp time;

  void d(){
    
  }

  OrderWidgetModel({
    required this.phone,
    required this.id,
    required this.fullname,
    required this.date,
    required this.location,
    required this.quantity,
    required this.position
  });

  OrderWidgetModel.fromFirebase(String ids,Map<String,dynamic> data):id=ids,phone=data["phone"],quantity=data["quantity"],location=data["location"],date= "${data["date"]?.toDate().hour??''}:${data["date"]?.toDate().minute??''}  ${data["date"]?.toDate().day??''}/${data["date"]?.toDate().month??''}/${data["date"]?.toDate().year??''}",position = LatLong(data["lat"],data["long"]),fullname=data["fullName"];

}