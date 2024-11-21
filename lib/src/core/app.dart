import 'package:flutter/material.dart';
import 'package:fwo/src/presentation/views/screens/add_screen.dart';
import 'package:fwo/src/presentation/views/screens/profile_page.dart';
import 'package:get/get.dart';

import '../presentation/logic/controllers/translations_controller.dart';
import '../presentation/views/screens/company/company_screen.dart';
import '../presentation/views/screens/company/contract _screen.dart';
import '../presentation/views/screens/home_screen.dart';
import '../presentation/views/screens/languages_screen.dart';
import '../presentation/views/screens/login_screen.dart';
import '../presentation/views/screens/person/person_screen.dart';
import '../presentation/views/screens/signup_screen.dart';
import '../presentation/views/screens/splash_screen.dart';
import '../presentation/views/screens/station/station_screen.dart';
import '../presentation/views/screens/suggestions_and_complaints_screen.dart';
import '../presentation/views/screens/user_type_screen.dart';
import '../presentation/views/screens/welcome_screen.dart';
import 'config/Translation/local.dart';
import 'config/theme_config.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TranslationsController controller = Get.find<TranslationsController>();
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.cupertino,

      translations: LocalStrings(),
      locale: controller.mylocale,
      title: 'fwo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: lightTheme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/languages', page: () => const LanguagesScreen()),
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/signup', page: () => const SignupScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/user_type', page: () => const UserTypeScreen()),
        GetPage(name: '/suggestions_and_complaints', page: () => const SuggestionsAndComplaintsScreen()),
        GetPage(name: '/contract', page: () => const ContractScreen()),
        GetPage(name: '/company', page: () => const CompanyScreen()),
        GetPage(name: '/station', page: () =>  StationScreen()),
        GetPage(name: '/person', page: () =>  PersonScreen()),
        GetPage(name: '/add', page: () => const AddScreen()),
        GetPage(name: '/suggestionsAndComplaintsScreen', page: () => const SuggestionsAndComplaintsScreen()),
      ],
    );
  }
}