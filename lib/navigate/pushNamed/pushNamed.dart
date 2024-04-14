// Cách sử dụng Navigator.pushNamed(context, '/nameScreen')

import 'package:flutter/material.dart';

import 'package:demo_ft_navigate/navigate/pushNamed/screen_pushNamed.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning Flutter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Container(height: 100, width: 100),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/Screen1",
                    arguments: {'argumentRoute': "ArgumentRouteContent"});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                padding: const EdgeInsets.all(16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: const Text(
                "Sang màn 1",
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "xinchafo",
              style: TextStyle(color: Colors.amber),
            ),
          ],
        ),
      ),
    );
  }
}
