import 'package:flutter/material.dart';
import 'package:navigator2_setstate/app/modules/home/home_controller.dart';
import 'package:navigator2_setstate/app/modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = HomeController();
    return MaterialApp(
      title: 'Material App',
      home: HomePage(controller: controller),
    );
  }
}
