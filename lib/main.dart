import 'package:flutter/material.dart';
import 'package:form_wala/view/foodOrder.dart';
import 'package:form_wala/view/image.dart';
import 'package:form_wala/view/login_screen.dart';
import 'package:form_wala/view/newLogonScreen.dart';
import 'package:form_wala/view/toDoList.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
      home: ImageOnly(),
    );
  }
}
