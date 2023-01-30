import 'dart:js';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/landing/screens/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
  }
}
