import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/auth_controller.dart';
import '../widgets/button_widget.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  AuthController controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Delete Account'.tr,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.surface,
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'to delete your account please click on the button below'.tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
            ),
            const SizedBox(height: 30),
            ButtonWidget(
              labelText: 'Delete my account'.tr,
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text(
                              'Are you sure you want to delete your account?'
                                  .tr),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                  Get.back();
                                },
                                child: Text('No'.tr)),
                            TextButton(
                                onPressed: () async {
                                  await controller.deleteAccount();
                                },
                                child: Text('Yes'.tr)),
                          ],
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
