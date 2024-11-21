import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserTypeScreen extends StatefulWidget {
  const UserTypeScreen({super.key});

  @override
  State<UserTypeScreen> createState() => _UserTypeScreenState();
}

class _UserTypeScreenState extends State<UserTypeScreen> {
  _continueAs(String userType) {
    switch (userType) {
      case 'company':
        Get.toNamed('/company');
        break;
      case 'person':
        Get.toNamed('/person');
        break;
      case 'station':
        Get.toNamed('/station');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height:30),
            Text('Continue as'.tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            )),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                _continueAs('company');
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 130,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                     Icon(Icons.business, color: Theme.of(context).colorScheme.primary,size: 50,),
                    const SizedBox(width: 20),
                    Text('Economic company'.tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                _continueAs('station');
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 130,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                     Icon(Icons.ev_station, color: Theme.of(context).colorScheme.primary,size: 50,),
                    const SizedBox(width: 20),
                    Text('Station'.tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                _continueAs('person');
              },
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 130,
                width: double.infinity,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                     Icon(Icons.person, color: Theme.of(context).colorScheme.primary,size: 50,),
                    const SizedBox(width: 20),
                    Text('Oil complex'.tr,style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),),
                  ],
                ),
              ),
            ),
          ],          
        ),
      ),
    );
  }
}