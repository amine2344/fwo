import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fwo/src/presentation/logic/controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../widgets/button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthController authController = Get.find<AuthController>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  FocusNode email = FocusNode();
  FocusNode password = FocusNode();
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login'.tr,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                'Login to your account'.tr,
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
                      Text(
                        'Email'.tr,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: emailController,
                        focusNode: email,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            gapPadding: 0.0,
                          ),
                          labelText: 'Enter Email'.tr,
                        ),
                      ),
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
                    Text(
                      'Password'.tr,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
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
                  ],
                ),
              ),
              ButtonWidget(
                labelText: 'Login'.tr,
                onPressed: () async {
                  FocusManager.instance.primaryFocus?.unfocus();
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    Get.showSnackbar(
                      GetSnackBar(
                        message: 'Please Enter Email and Password'.tr,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  
                  authController
                  .login(
                    email: emailController.text, 
                    password: passwordController.text,
                    );
                },
              ),
              TextButton(
                onPressed: () async {
                  if(emailController.text.isEmpty) {
                    Get.showSnackbar(
                      GetSnackBar(
                        message: 'Please Enter Email'.tr,
                        duration: const Duration(seconds: 2),
                      ),
                    );
                    return;
                  }
                  authController.resetPassword(
                    email: emailController.text,
                  );
                },
                child: Text('Forgot Password?'.tr),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
