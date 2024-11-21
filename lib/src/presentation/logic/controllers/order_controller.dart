import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fwo/src/api/api.dart';
import 'package:fwo/src/core/helper/handleFirebaseExeption/firebase_exception_functions.dart';
import 'package:fwo/src/core/helper/utlis.dart';
import 'package:fwo/src/presentation/logic/models/user_model.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  final Api _api = Api.instance;
  sabmitOrder({
    required String fullName,
    required String phone,
    required String quantity,
    required double lat,
    required double long,
    required String location
  }) async {
    var errorCode = await handleFirebaseError(() async {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
      );
      Map <String, dynamic> data = {
        'fullName': fullName,
        'phone': phone,
        'quantity': quantity,
        'lat': lat,
        'long': long,
        'location':location,
        'status': 'pending',
        'date': FieldValue.serverTimestamp(),
      };
      UserModel? user = await userBox.get('user');
      if (user != null) {
        data['uId'] = user.uId;
        data['type'] = user.type;
      }
      await _api
          .sabmitOrder(data)
          .then((value) {
        
        Get.dialog(
          barrierDismissible: false,
          AlertDialog(
            
            title: Icon(Icons.check,color: Colors.green,size: 50,),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Order submitted successfully'.tr),
              ],
            ),
           
             actions: [
              TextButton(onPressed: (){
                Get.back();
                Get.back();
                
                Get.offNamed('/suggestionsAndComplaintsScreen');

              }, child: Text('ok'.tr,style: TextStyle(fontWeight: FontWeight.bold,),))
            ],
          )
        );
        
      });
    });
    if (errorCode != null) {
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
    }
  }

  addSuggestionsAndComplaint(String text) async {
    var errorCode = await handleFirebaseError(() async {
      Map <String, dynamic> data = {
        'text': text,
        'date': DateTime.now().toString(),
        'status': 'pending',
      };
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
      );
      await _api
          .addSuggestionsAndComplaint(data)
          .then((value) {
        Get.offAll(()=>true);
        Get.toNamed('/home');
        Get.dialog(
          AlertDialog(
            title: Icon(Icons.check,color: Colors.green,size: 40,),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Suggestion and Complaint submitted successfully'.tr,textAlign: TextAlign.center,),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Get.back();
              }, child: Text('ok'.tr,style: TextStyle(fontWeight: FontWeight.bold),))
            ],
            
            
          )
        );
        
        
      });
    });
    if (errorCode != null) {
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
    }
  }
  renewContract() async {
    var errorCode = await handleFirebaseError(() async {
      Map<String, dynamic> data = {
        'date': DateTime.now().toString(),
        'userData': (userBox.get('user') as UserModel).toMap(),
        'status': 'pending',
      };
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
      );
      await _api
          .renewContract(data)
          .then((value) {
        Get.back();
        Get.dialog(
          AlertDialog(
            title: Icon(Icons.check,color: Colors.green,),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contract renewed sabmitted successfully'.tr),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Get.back();
              }, child: Text('ok'.tr,style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          )
        );
       
        
      });
    });
    if (errorCode != null) {
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
      Get.back();
      Get.dialog(
          AlertDialog(
            title: Icon(Icons.close,color: Colors.redAccent,),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(errorMessage),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Get.back();
              }, child: Text('ok'.tr.tr,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
            ],
          )
        );
  }
  }
}