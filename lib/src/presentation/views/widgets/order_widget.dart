import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fwo/src/presentation/logic/models/order_widget_model.dart';
import 'package:get/get.dart';

import 'button_widget.dart';

class OrderWidget extends StatelessWidget {

  OrderWidgetModel order;
  OrderWidget({super.key,required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(width: 1),

      ),
      child: ExpansionTile(
         
          title: Text('Orders'.tr+"          ${order.id.substring(0,5)}",style: TextStyle(fontSize: 20),),
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
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
                              readOnly: true,
                              controller: TextEditingController(text: order.fullname),
                              decoration: InputDecoration(
                                 suffixIcon:  Icon(
                                    Icons.person,
                                    color: Theme.of(context).primaryColor,
                                    size: 30,
                                  ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  gapPadding: 10.0,
                                ),
                                labelText: 'FullName'.tr,
                              ),
                            ),
                            const SizedBox(height: 8),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                         vertical: 8,
                        horizontal: 16,
                      ),
                      child: TextField(
                        readOnly: true,
                        controller: TextEditingController(text: order.phone),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                           suffixIcon:  Icon(
                                    Icons.call,
                                    color: Theme.of(context).primaryColor,
                                    size: 30,
                                  ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding: 10.0,
                          ),
                          labelText: 'Phone'.tr,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: TextField(
                        readOnly: true,
                        controller: TextEditingController(text:order.quantity),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                           suffixIcon:  Icon(
                                    Icons.water,
                                    color: Theme.of(context).primaryColor,
                                    size: 30,
                                  ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding: 10.0,
                          ),
                          labelText: 'Quantity'.tr,
                        ),
                      ),
                    ),
                    Container(
                          padding: EdgeInsets.all(15),
                          child: TextField(
                            
                            onTap: (){
                                   //Get.to(()=>LocationPicker());
            
                            },
                            maxLines: 3,
                            minLines: 1,
                            readOnly: true,
                            controller: TextEditingController(text:order.location),
                            decoration: InputDecoration(
                              labelText: "Location".tr,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.green
                                )
                              ),
                              suffixIcon:  Icon(
                                    Icons.location_on,
                                    color: Theme.of(context).primaryColor,
                                    size: 30,
                                  ),
                            ),
                          ),
                        ),
            
                        Container(
                          padding: EdgeInsets.all(15),
                          child: TextField(
                            
                            onTap: () async{
                              
            
                            },
                            maxLines: 3,
                            minLines: 1,
                            readOnly: true,
                            controller: TextEditingController(text:order.date),
                            decoration: InputDecoration(
                              labelText: "Date".tr,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: BorderSide(
                                  color: Colors.green
                                )
                              ),
                              suffixIcon:  Icon(
                                    Icons.calendar_month,
                                    color: Theme.of(context).primaryColor,
                                    size: 30,
                                  ),
                            ),
                          ),
                        ),
                      
                  const SizedBox(height: 0),
      
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(MediaQuery.of(context).size.width * 0.9,
                            MediaQuery.of(context).size.height * 0.05),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1, color: Colors.redAccent.withOpacity(.8)),
                          borderRadius: BorderRadius.circular(
                              12), // Change this value for a different radius
                        ),
                      ),
                      onPressed: () async{
                                 FirebaseFirestore _firestore = FirebaseFirestore.instance;
                                 await _firestore.collection("orders").doc(order.id).delete();
                      },
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Cancel".tr,
                            style: TextStyle(
                                color: Colors.black
                                    .withOpacity(.6)
                                    .withOpacity(.81),
                                fontWeight: FontWeight.w500,
                                fontSize: 18),
                          ),
                          SizedBox(width: 25,),
                          Icon(
                            Icons.close,
                            color: Colors.black.withOpacity(.6),
                            size: 20,
                          )
                        ],
                      )),
                      SizedBox(height: 15,)
                      
                ],
            ),
          ],
        
      ),
    );
  }
}