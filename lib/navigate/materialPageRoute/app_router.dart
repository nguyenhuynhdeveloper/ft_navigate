import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Tạo 1 file khai báo GlobalKey để điều hướng màn hình 
class AppRouter {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static push(Widget page) => navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (_) => page),
      );
}
