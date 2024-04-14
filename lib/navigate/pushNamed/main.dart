import 'package:flutter/material.dart';

import 'package:demo_ft_navigate/navigate/pushNamed/pushNamed.dart';
import 'package:demo_ft_navigate/navigate/pushNamed/screen_pushNamed.dart';


void main() {
  runApp(const PushNamed());
}



class PushNamed extends StatelessWidget {
  const PushNamed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: Fonts.SFPro
          // fontFamily: Fonts.regular
          ),
      routes: routesList,

      initialRoute: //Danh sách các màn hình mà có thể chuyển Navigator sang
          "/", // Màn hình mặc định khi khởi tạo app là chạy lên
    );
  }
}

//Map danh sách các màn hình có thể chuyển qua chuyển lại trong ứng dụng : get routeList => {}
Map<String, WidgetBuilder> get routesList => {
      "/": (context) => const HomePage(),
      "/Screen1": (context) => Screen1(),
    };
