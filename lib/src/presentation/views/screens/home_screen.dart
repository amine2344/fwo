import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwo/src/core/helper/utlis.dart';
import 'package:fwo/src/presentation/logic/controllers/order_controller.dart';
import 'package:fwo/src/presentation/logic/models/user_model.dart';
import 'package:fwo/src/presentation/views/screens/add_screen.dart';
import 'package:fwo/src/presentation/views/screens/profile_page.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../../../core/helper/functions.dart';
import '../widgets/button_widget.dart';
import '../widgets/location_widget.dart';
import 'main_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ValueNotifier<int> _index = ValueNotifier(0);
  OrderController orderController = Get.put(OrderController(),tag: "order");


  List<Widget> pages = [
    MainScreen(),
    ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ValueListenableBuilder(
          valueListenable: _index,
          builder: (context,value,child) {
            return Text(
              value==0?'Home'.tr:'Profile'.tr,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18
                  ),
            );
          }
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.surface, size: 30),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
         IconButton(
            onPressed: () {
              Get.toNamed('/languages');
          }, icon: const Icon(Icons.language,))
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: _index,
        builder: (context,value,child)=>IndexedStack(
          index: value,
          children: pages,
        ),
        ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: _index,
        builder: (context,value,child) {
          return BottomNavigationBar(
            currentIndex: value,
            onTap: (index){
              _index.value = index;
            },
            selectedIconTheme: IconThemeData(color: Colors.green),
            selectedLabelStyle: TextStyle(color: Colors.green),
            items: [
              BottomNavigationBarItem(icon: Icon(value==0?Ionicons.home:Ionicons.home_outline),label: 'Home'.tr),
              BottomNavigationBarItem(icon: Icon(value==0?Ionicons.person_outline:Ionicons.person),label: 'Profile'.tr),
            ],
          );
        }
      ),
    );
  }





}