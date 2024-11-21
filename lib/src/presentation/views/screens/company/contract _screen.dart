import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fwo/src/core/helper/functions.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../logic/controllers/auth_controller.dart';
import '../../widgets/button_widget.dart';

class ContractScreen extends StatefulWidget {
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  AuthController authController = Get.find<AuthController>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneController;
  late TextEditingController confirmPasswordController;
  late TextEditingController nameController;
  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  FocusNode phone = FocusNode();
  FocusNode confirmPassword = FocusNode();
  FocusNode name = FocusNode();
  bool isChecked = false;
  @override
  void initState() {
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    confirmPasswordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contract'.tr,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                ),
              ),
              Text(
                'Create an account'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
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
                        controller: nameController,
                        focusNode: name,
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
                  horizontal: 16,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      TextField(
                        controller: emailController,
                        focusNode: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding: 10.0,
                          ),
                          labelText: 'Enter Email'.tr,
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
                      const SizedBox(height: 8),
                      TextField(
                        controller: phoneController,
                        focusNode: phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding: 10.0,
                          ),
                          labelText: 'Enter Phone'.tr,
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 8),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    TextField(
                      controller: passwordController,
                      focusNode: password,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          gapPadding: 10.0,
                        ),
                        labelText: 'Enter Password'.tr,
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      TextField(
                        controller: confirmPasswordController,
                        focusNode: confirmPassword,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding: 10.0,
                          ),
                          labelText: 'Confirm Password'.tr,
                        ),
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        enableSuggestions: false,
                      ),
                      const SizedBox(height: 8),
                    ]),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Add Company Details (Optional)'.tr,
                    maxLines: 2,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Visibility(
                visible: isChecked,
                child: Wrap(alignment: WrapAlignment.center, children: [
                  const SizedBox(height: 16),
                  Text(
                    'Company Details'.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 150,
                    margin: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.fromBorderSide(
                        BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    child: authController.copyOfTheCommercialRegister == null
                        ? InkWell(
                            onTap: () async {
                              XFile? image = await pickImage();
                              if (image != null) {
                                authController.copyOfTheCommercialRegister =
                                    image;
                                setState(() {});
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                                Text('A copy of the commercial register'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ))
                              ],
                            ),
                          )
                        : Image.file(
                            File(authController
                                .copyOfTheCommercialRegister!.path),
                          ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 150,
                    margin: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.fromBorderSide(
                        BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    child: authController.copyOfTheTaxIDCard == null
                        ? InkWell(
                            onTap: () async {
                              XFile? image = await pickImage();
                              if (image != null) {
                                authController.copyOfTheTaxIDCard = image;
                                setState(() {});
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                                Text('A copy of the tax ID card'.tr,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ))
                              ],
                            ),
                          )
                        : Image.file(
                            File(authController.copyOfTheTaxIDCard!.path),
                          ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: 150,
                    margin: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.fromBorderSide(
                        BorderSide(
                            color: Colors.grey,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                    ),
                    child: authController.copyOfTheContractorsIDcard == null
                        ? InkWell(
                            onTap: () async {
                              XFile? image = await pickImage();
                              if (image != null) {
                                authController.copyOfTheContractorsIDcard =
                                    image;
                                setState(() {});
                              }
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.add,
                                  size: 100,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'A copy of the contractor’s ID card'.tr,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                ),
                              ],
                            ),
                          )
                        : Image.file(
                            File(authController
                                .copyOfTheContractorsIDcard!.path),
                          ),
                  ),
                ]),
              ),
              ButtonWidget(
                labelText: 'Register'.tr,
                onPressed: () async {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (passwordController.text !=
                          confirmPasswordController.text ||
                      nameController.text.isEmpty ||
                      emailController.text.isEmpty ||
                      phoneController.text.isEmpty ||
                      passwordController.text.isEmpty ||
                      confirmPasswordController.text.isEmpty ||
                      (isChecked &&
                          (authController.copyOfTheContractorsIDcard == null ||
                              authController.copyOfTheTaxIDCard == null ||
                              authController.copyOfTheCommercialRegister ==
                                  null))) {
                    Get.showSnackbar(
                      GetSnackBar(
                        message: (nameController.text.isEmpty ||
                                emailController.text.isEmpty ||
                                phoneController.text.isEmpty ||
                                passwordController.text.isEmpty ||
                                confirmPasswordController.text.isEmpty
                            ? 'Please fill all fields'.tr
                            : isChecked
                                ? 'Please upload all files'.tr
                                : 'Passwords do not match'.tr),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  await authController.register(
                    name: nameController.text,
                    email: emailController.text,
                    phone: phoneController.text,
                    password: passwordController.text,
                    type: 'company',
                    isChecked: isChecked,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*
  

*/