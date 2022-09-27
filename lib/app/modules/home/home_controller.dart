import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:navigator2_setstate/app/modules/aceess/access_page.dart';
import 'package:navigator2_setstate/app/modules/settings/settings_page.dart';
import 'package:navigator2_setstate/app/modules/user/user_page.dart';

class HomeController {
  GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
  generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const UserPage());
      case '/settings':
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case '/access':
        return MaterialPageRoute(builder: (_) => const AccessPage());
      default:
        return null;
    }
  }
}
