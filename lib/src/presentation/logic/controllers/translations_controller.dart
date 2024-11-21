import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../../core/helper/utlis.dart';


class TranslationsController extends GetxController {
  List<String> _languages = [];
  String _currentLanguage = 'FR';
  late Locale mylocale;
  get currentLanguage => _currentLanguage;
  get languages => _languages;

   changeLanguage(String lang) {
    Locale locale;
    _currentLanguage = lang;
    switch (lang) {
      case 'FR':
        _languages = ['AR','EN'];
        locale = const Locale('fr', 'FR');
        break;
      case 'AR':
        _languages = ['FR','EN'];
        locale = const Locale('ar', 'AE');
        break;
      case 'EN':
        _languages = ['FR','AR'];
        locale = const Locale('en', 'US');
        break;
      default:
        _languages = [];
        locale = const Locale('ar', 'AE');
    }
    settingBox.put("lang", lang);
    mylocale = locale;
    Get.updateLocale(locale);
    debugPrintSynchronously(Get.locale.toString());
    update();
  }

  initLanguage() {
    _currentLanguage =
        settingBox.get('language') ?? 'AR';
    changeLanguage(_currentLanguage);
  }
 
}
