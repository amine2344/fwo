import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fwo/src/presentation/views/widgets/button_widget.dart';
import 'package:get/get.dart';
import '../../../core/helper/utlis.dart';




class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Stack(
                fit: StackFit.expand,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    child: Container(
                      width: screenWidth,
                      height: screenHeight,
                      // margin: const EdgeInsets.symmetric(
                      //   horizontal: 4
                      // ),
                      padding: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage('assets/images/welcome.png'),
                          fit: BoxFit.fill,
                        )
                      ),
                    ),
                  ),
                  
                  Positioned(
                    bottom: 48,
                    right: 32,
                    left: 32,
                    child: ButtonWidget(
                      labelText: 'Get Started'.tr,
                      onPressed: () {
                        settingBox.put('intro', true);
                                Get.offAllNamed('/user_type');
                      },
                    ),
                  )
                ],
              ),
    );
  }
}