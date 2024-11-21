import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../logic/controllers/auth_controller.dart';
import '../widgets/button_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
          'Signup'.tr,
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
                height: 200,
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'),
                )),
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
              ButtonWidget(
                labelText: 'Signup'.tr,
                onPressed: () async {
                  FocusManager.instance.primaryFocus?.unfocus();

                  if (passwordController.text !=
                      confirmPasswordController.text) {
                    Get.showSnackbar(
                      GetSnackBar(
                        message: 'Password does not match'.tr,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  if (emailController.text.isEmpty ||
                      nameController.text.isEmpty ||
                      phoneController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    Get.showSnackbar(
                      GetSnackBar(
                        message: 'All fields are required'.tr,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  if (passwordController.text.length < 6) {
                    Get.showSnackbar(
                      GetSnackBar(
                        message: 'Password should be at least 6 characters'.tr,
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
                    type: Get.arguments as String,
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
