import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fwo/src/presentation/logic/models/order_widget_model.dart';
import 'package:fwo/src/presentation/views/screens/add_screen.dart';
import 'package:fwo/src/presentation/views/widgets/order_widget.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("orders").where("uId",isEqualTo: FirebaseAuth.instance.currentUser?.uid??'').snapshots(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.active || snapshot.connectionState == ConnectionState.done){
            List<OrderWidgetModel> list = [];

            snapshot.data?.docs.forEach((d){
              list.add(OrderWidgetModel.fromFirebase(d.id, d.data()));
            });
            
            return list.isEmpty? Center(
              child: Text('you dont have any orders'.tr),
            ):ListView.builder(
              itemCount: list.length,
              itemBuilder: (context,position){
                return OrderWidget(order: list[position]);
            });
          }
          return Center(child: CircularProgressIndicator(),);
        }
        ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (){
          Get.toNamed('add');
        },
        child: Icon(Icons.add,color: Colors.white,),
        ),
    );
  }
}