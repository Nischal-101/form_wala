import 'package:flutter/material.dart';
import 'package:form_wala/view/splash_controller.dart';
import 'package:get/get.dart';

class ImageOnly extends StatelessWidget {
  ImageOnly({super.key});


  final c = Get.put(SplashScreenController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset("assets/steak.jpg")
        ],
      ),
    );
  }
}