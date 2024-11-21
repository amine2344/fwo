import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import '../../presentation/logic/controllers/auth_controller.dart';
import '../../presentation/logic/controllers/translations_controller.dart';
import '../../presentation/logic/models/user_model.dart';
import '../helper/utlis.dart';
import 'firebase_options.dart';

Future<void> initSettings() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAppCheck.instance.activate(
  //   androidProvider: AndroidProvider.playIntegrity,
  // );
  await Hive.initFlutter();
  Hive.registerAdapter(UserModelAdapter());
  userBox = await Hive.openBox<UserModel>('user');
  settingBox = await Hive.openBox('setting');
  Get.put(AuthController(), permanent: true);
  TranslationsController translationsController =
      Get.put(TranslationsController(), permanent: true);
  await translationsController.initLanguage();
}
