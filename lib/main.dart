// import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const SecondPage(),

      routes: routes, // Khai báo tất cả tuyến đường màn hình mà app có thể chạy qua
      initialRoute: '/MyHomePage', //Khai báo tuyến đường đầu tiên mà chạy qua---> màn hình đầu tiên được hiển thị
    );
  }
}

Map<String, WidgetBuilder> get routes => {
      "/MyHomePage": (context) => MyHomePage(),
      "/SecondPage": (context) => SecondPage(),
     
    };

// Map <String,int> a_Map = {"a" : 2   };

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đây là màn 1"),
      ),
      body: Container(
        color: Colors.pink,
        child: Center(
          child: ElevatedButton(
              onPressed: () {
                // Navigator.pushNamed(context, "/SecondPage");
                Navigator.of(context).pushNamed("/SecondPage");
              },
              child: Text("Sang màn 2")),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Đây là màn 2")),
      body: Container(
          child: Center(
        child: ElevatedButton(
          onPressed: () {
            //  Navigator.pushNamed(context, "/MyHomePage");  // Cách viết 1
            Navigator.of(context).pushNamed("/MyHomePage"); //Cách viết 2
          },
          child: Text("Sang lại màn 1"),
        ),
      )),
    );
  }
}
