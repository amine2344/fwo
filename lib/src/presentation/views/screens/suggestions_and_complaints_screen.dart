import 'package:flutter/material.dart';
import 'package:fwo/src/presentation/logic/controllers/order_controller.dart';
import 'package:fwo/src/presentation/views/widgets/button_widget.dart';
import 'package:get/get.dart';

class SuggestionsAndComplaintsScreen extends StatefulWidget {
  const SuggestionsAndComplaintsScreen({super.key});

  @override
  State<SuggestionsAndComplaintsScreen> createState() =>
      _SuggestionsAndComplaintsScreenState();
}

class _SuggestionsAndComplaintsScreenState
    extends State<SuggestionsAndComplaintsScreen> {
  OrderController orderController = Get.put(OrderController());
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
         Get.back();
        }, icon: Icon(Icons.arrow_back)),
        title: Text(
          'Suggestions And Complaints'.tr,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(
            color: Theme.of(context).colorScheme.surface, size: 30),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 64,
              ),
              Container(
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.all(20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: SizedBox(
                  width: Get.width - 60,
                  child: TextField(
                    controller: controller,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Suggestions Or Complaints'.tr,
                      // hintText: 'Suggestions Or Complaints'.tr,
                    ),
                  ),
                ),
              ),
              ButtonWidget(
                  onPressed: () async {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (controller.text.isEmpty) {
                      Get.showSnackbar(
                        GetSnackBar(
                          message:
                              'Please Enter Your Suggestions Or Complaints'.tr,
                          duration: const Duration(seconds: 3),
                        ),
                      );
                      return;
                    }
                    await orderController
                        .addSuggestionsAndComplaint(controller.text);
                  },
                  labelText: 'Add'.tr),
            ],
          ),
        ),
      ),
    );
  }
}
