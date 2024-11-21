import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fwo/src/api/api.dart';
import 'package:fwo/src/core/helper/handleFirebaseExeption/firebase_exception_functions.dart';
import 'package:fwo/src/core/helper/utlis.dart';
import 'package:fwo/src/presentation/logic/models/user_model.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthController extends GetxController {
  final Api _api = Api.instance;
  XFile? copyOfTheCommercialRegister;
  XFile? copyOfTheTaxIDCard;
  XFile? copyOfTheContractorsIDcard;

  Future<void> deleteAccount() async {
    var errorCode = await handleFirebaseError(() async {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
      );
      await _api.deleteAccount();
      Get.back();
      userBox.delete('user');
      Get.offAllNamed('/');
      // await signOut();
    });
    if (errorCode != null) {
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
      Get.back();
      Get.showSnackbar(
        GetSnackBar(
          message: errorMessage,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> login({
    required String email,
    required String password,
  }) async {
    try {
      var errorCode = await handleFirebaseError(() async {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
      );
      UserCredential userCredential = await _api.signIn(email, password);
      print("signin success");
      if (userCredential.user != null) {
        final userData = await _api.getUserFromFirestore(userCredential.user!.uid);
        UserModel userModel = UserModel.fromMap(userData.data() as Map<String, dynamic>);
        await userBox.put('user', userModel);
        Get.back();
        Get.offAllNamed('/');
      } else {
        Get.back();
        Get.showSnackbar(
          GetSnackBar(
            message: 'User not found'.tr,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    });
    if (errorCode != null) {
      _api.signOut();
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
      Get.back();
      Get.showSnackbar(
        GetSnackBar(
          message: errorMessage,
          duration: const Duration(seconds: 3),
        ),
      );
    }
    } catch (e) {
      print("error $e");
    }
    
  }

  Future<void> signInAnonymously() async{
     UserCredential userCredential = await FirebaseAuth.instance.signInAnonymously();
     UserModel userModel = UserModel(uId: userCredential.user?.uid??'',name: '',email: '',phone: '',type: 'anonymous',tokon: '');
     await userBox.put('user', userModel);
     Get.back();
     Get.offAllNamed('/');
  }

  register({
    required String name,
    required String email,
    required String phone,
    required String type,
    required String password,
    bool isChecked = false,
  }) async {
    var errorCode = await handleFirebaseError(() async {
      Get.dialog(
        const Center(child: CircularProgressIndicator()),
      );
      UserCredential userCredential = await _api.signUp(email, password);
      if (userCredential.user != null) {
        Map<String, dynamic> data = {
          'uId': userCredential.user!.uid,
          'name': name,
          'email': email,
          'phone': phone,
          'type': type,
          'upload': false,
          'contractor': false,
        };
        if (type == 'company' && isChecked) {
          TaskSnapshot copyOfTheCommercialRegisterTask = await FirebaseStorage
              .instance
              .ref()
              .child(
                  'users/${userCredential.user!.uid}/${copyOfTheCommercialRegister!.name}')
              .putFile(File(copyOfTheCommercialRegister!.path));

          TaskSnapshot copyOfTheTaxIDCardTask = await FirebaseStorage.instance
              .ref()
              .child(
                  'users/${userCredential.user!.uid}/${copyOfTheTaxIDCard!.name}')
              .putFile(File(copyOfTheTaxIDCard!.path));
          TaskSnapshot copyOfTheContractorsIDcardTask = await FirebaseStorage
              .instance
              .ref()
              .child(
                  'users/${userCredential.user!.uid}/${copyOfTheContractorsIDcard!.name}')
              .putFile(File(copyOfTheContractorsIDcard!.path));

          data.addAll({
            'copyOfTheCommercialRegister':
                await copyOfTheCommercialRegisterTask.ref.getDownloadURL(),
            'copyOfTheTaxIDCard':
                await copyOfTheTaxIDCardTask.ref.getDownloadURL(),
            'copyOfTheContractorsIDcard':
                await copyOfTheContractorsIDcardTask.ref.getDownloadURL(),
          });
          data['upload'] = isChecked;
        }
        await _api.addUserToFirestore(data);

        UserModel userModel = UserModel.fromMap(data);
        await userBox.put('user', userModel);
        Get.back();
        Get.offAllNamed('/');
      }
    });
    if (errorCode != null) {
      _api.signOut();
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
      Get.back();
      Get.showSnackbar(
        GetSnackBar(
          message: errorMessage,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  signOut() async {
    var errorCode = await handleFirebaseError(() async {
      await _api.signOut();
      await userBox.delete('user');
      Get.offAllNamed('/');
    });
    if (errorCode != null) {
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
      Get.showSnackbar(
        GetSnackBar(
          message: errorMessage,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  resetPassword({required String email}) async {
    var errorCode = await handleFirebaseError(() async {
      await _api.resetPassword(email);
    });
    if (errorCode != null) {
      String errorMessage = getFirebaseErrorMessage(errorCode);
      print(errorMessage);
      Get.showSnackbar(
        GetSnackBar(
          message: errorMessage,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }
}
