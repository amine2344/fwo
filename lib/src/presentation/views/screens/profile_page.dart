import 'package:flutter/material.dart';
import 'package:fwo/src/presentation/logic/controllers/auth_controller.dart';
import 'package:fwo/src/presentation/logic/controllers/order_controller.dart';
import 'package:fwo/src/presentation/logic/models/user_model.dart';
import 'package:fwo/src/presentation/views/widgets/button_widget.dart';
import 'package:get/get.dart';

import '../../../core/helper/utlis.dart';
import 'delete_account.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  AuthController controller = Get.find<AuthController>();
  OrderController orderController = Get.find<OrderController>(tag: "order");
  UserModel? user = userBox.get('user');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Column(
          children: [
            SizedBox(height: Get.height * 0.05),
            Container(
              width: Get.width * 0.5,
              height: Get.width * 0.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
                border: Border.all(
                  color: Theme.of(context).colorScheme.primary,
                  width: 5,
                ),
              ),
              child: Icon(
                Icons.person,
                size: Get.width * 0.4,
                color: Theme.of(context).colorScheme.surface,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              (user != null && user!.name != null && user!.name!.isNotEmpty)? user?.name??'': 'anonyme',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    // color: Theme.of(context).colorScheme.,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              user?.email??'',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    // color: Theme.of(context).colorScheme.,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
            ),
            const SizedBox(height: 16),
            Text(
              user?.phone??'',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    // color: Theme.of(context).colorScheme.,
                    fontWeight: FontWeight.bold,
                    // fontStyle: FontStyle.italic,
                  ),
            ),
            const Spacer(),
            (user?.type??'') != 'company'
                ? const SizedBox()
                : ButtonWidget(
                    labelText: 'Request to renew the contract'.tr,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Text(
                              'Are you sure?, you want to renew the contract'
                                  .tr),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: Text('Cancel'.tr),
                            ),
                            TextButton(
                              onPressed: () async {
                                Get.back();
                                await orderController.renewContract();
                              },
                              child: Text('Yes'.tr),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
            const SizedBox(height: 16),
            ButtonWidget(
              labelText: 'Logout'.tr,
              onPressed: () {
                controller.signOut();
              },
            ),
            // const SizedBox(height: 16),
            ButtonWidget(
              labelText: 'Delete Your Account'.tr,
              onPressed: () {
                Get.to(const DeleteAccount());
              },
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
