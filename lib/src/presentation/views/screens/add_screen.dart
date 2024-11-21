import 'package:flutter/material.dart';
import 'package:fwo/src/core/helper/utlis.dart';
import 'package:fwo/src/presentation/logic/controllers/location_pick_controller.dart';
import 'package:fwo/src/presentation/logic/controllers/order_controller.dart';
import 'package:fwo/src/presentation/logic/models/user_model.dart';
import 'package:fwo/src/presentation/views/screens/location_picker.dart';
import 'package:fwo/src/presentation/views/widgets/button_widget.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../../../core/helper/functions.dart';
import '../widgets/location_widget.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

   late TextEditingController nameController;
   late TextEditingController phoneController;
   late TextEditingController quantityController;
   UserModel? user = userBox.get('user');
   Position? position;

    @override
  void initState() {
    print(user.toString());
    quantityController = TextEditingController(
      
    );
    nameController = TextEditingController(
      text: user?.name,
    );
    phoneController = TextEditingController(
      text: user?.phone,
    );
    super.initState();
  }
  String location = "";
  
  bool isLocationSelected = false;
  getPosition() async {
     position = await determinePosition();
     setState(() {
       isLocationSelected = true;
     });
  }

    OrderController orderController = Get.find(tag: "order");
    LocationPickController _locationPickController = Get.put(LocationPickController(),tag:"location");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        title: Text(
             'Add New Order'.tr,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18
                  ),
            ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
         
          Padding(
              padding: const EdgeInsets.symmetric(
                // vertical: 8,
                horizontal: 16,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                      // 'Name',
                      // style: Theme.of(context).textTheme.bodyLarge,
                    //  ),
                   const SizedBox(height: 8),
                    TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          gapPadding: 10.0,
                        ),
                        labelText: 'Enter Full Name'.tr,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                // vertical: 8,
                horizontal: 16,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                      // 'Name',
                      // style: Theme.of(context).textTheme.bodyLarge,
                    //  ),
                   const SizedBox(height: 8),
                    TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          gapPadding: 10.0,
                        ),
                        labelText: 'Enter Phone'.tr,
                      ),
                    ),
                    const SizedBox(height: 8),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                // vertical: 8,
                horizontal: 16,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                      // 'Name',
                      // style: Theme.of(context).textTheme.bodyLarge,
                    //  ),
                   const SizedBox(height: 8),
                    TextField(
                      controller: quantityController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          gapPadding: 10.0,
                        ),
                        labelText: 'Enter Quantity'.tr,
                        suffix: Text("Litre"),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ]),
            ),
            GetBuilder<LocationPickController>(
              tag: "location",
              builder: (controler) {
                return Container(
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    
                    onTap: (){
                            Get.to(()=>LocationPicker());

                    },
                    maxLines: 3,
                    minLines: 1,
                    readOnly: true,
                    controller: TextEditingController(text:controler.location.value.isEmpty?'Select Location'.tr:controler.location.value),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Colors.green
                        )
                      ),
                      suffixIcon:  Icon(
                            controler.location.value.isNotEmpty
                                ? Icons.check
                                : Icons.location_on_outlined,
                            color: Theme.of(context).primaryColor,
                            size: 30,
                          ),
                    ),
                  ),
                );
              }
            ),
          const SizedBox(height: 0),
          ButtonWidget(
            labelText: 'Add'.tr,
            onPressed: () async {
              if (
                nameController.text.isEmpty ||
                phoneController.text.isEmpty ||
                quantityController.text.isEmpty
                ) {
                  Get.dialog(
          AlertDialog(
            title: Icon(Icons.close,color: Colors.redAccent,),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( 'Please fill all fields'.tr),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Get.back();
              }, child: Text('ok'.tr,style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          )
        );
                
                return;
              }
              if (_locationPickController.location.isEmpty) {
                

                Get.dialog(
          AlertDialog(
            title: Icon(Icons.close,color: Colors.redAccent,),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Please select location'.tr),
              ],
            ),
            actions: [
              TextButton(onPressed: (){
                Get.back();
              }, child: Text('ok'.tr,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))
            ],
          )
        );
                return;
              }
              await orderController.sabmitOrder(
                fullName: nameController.text,
                phone: phoneController.text,
                quantity: quantityController.text,
                lat: _locationPickController.position.value.latitude,
                long:_locationPickController.position.value.longitude,
                location: _locationPickController.location.value
              );
              
            },
          ),
        ],
      ),
   
    );
  }
}