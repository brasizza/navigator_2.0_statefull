import 'package:flutter/material.dart';
import 'package:navigator2_setstate/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller;
  const HomePage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEU APP BAR'),
      ),
      body: Navigator(
        key: controller.navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (settings) => controller.generateRoutes(settings),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: ((value) {
          switch (value) {
            case 0:
              controller.navigatorKey?.currentState?.pushReplacementNamed('/');
              break;

            case 1:
              controller.navigatorKey?.currentState?.pushReplacementNamed('/settings');
              break;

            case 2:
              controller.navigatorKey?.currentState?.pushReplacementNamed('/access');
              break;
          }
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.accessibility), label: ''),
        ],
      ),
    );
  }
}
