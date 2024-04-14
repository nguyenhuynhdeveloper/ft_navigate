// Cách sử dụng MaterialPageRoute
import 'package:flutter/material.dart';
import 'package:demo_ft_navigate/navigate/materialPageRoute/app_router.dart';
import 'package:demo_ft_navigate/navigate/materialPageRoute/push_pop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  final navigatorKey1 = AppRouter();
    return MaterialApp(
        // Đây chính là sử dụng GlobalKeys
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // fontFamily: Fonts.SFPro
            // fontFamily: Fonts.regular
            ),
        navigatorKey: AppRouter.navigatorKey,
        // Cách sử dụng navigatorKey : thay thế cho context
        // MaterialApp có 1 thuộc tính là navigatorKey
        home: HomePage());
  }
}
