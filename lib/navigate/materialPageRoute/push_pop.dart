import 'package:demo_ft_navigate/navigate/pushNamed/screen_pushNamed.dart';
import 'package:demo_ft_navigate/navigate/materialPageRoute/app_router.dart';

import 'package:flutter/material.dart';

// Màn hình HomePage
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
        title: const Text('Learning Flutter'), //Tiêu đề của thanh AppBar
        centerTitle: true, // Thuộc tính có căn giữa không
      ),
      body: Center(
        // widget căn giữa ra màn hình (hoặc giữa thằng widget cha của nó)
        child: Column(
          //Widget mà các children bên trong xếp theo hàng dọc
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Column Widget  : mainAxisAlignment  là trục dọc
          children: [
            SizedBox(
              width: 150,
              height: 150,
              child: Container(height: 100, width: 100),
            ),
            ElevatedButton(
              onPressed: () {
                //--------CÁCH SỬ DỤNG CONTEXT-----------------
                //Cách 1 : push: Đè lên trên
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const Screen1(
                            argumentRoute: "argumentRoute",
                          )),
                  // Cách để có thể truyền tham số sang màn hình tiếp theo : sử dụng constructor
                );

                // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                //   return Screen1();
                // }));

                // // Cách 2: pushReplacement:  thay thế màn hiện tại
                //   Navigator.of(context).pushReplacement(
                // MaterialPageRoute(
                //     builder: (context) => const Screen1( titleArgument:  "TitleArgument",)),
                //     );

                //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) {
                //   return Screen1();
                // }));

                //----------- CÁCH SỬ DỤNG navigatorKey : đã tạo 1 file Class khác
                // AppRouter.push( const Screen1());    //Cách sử dụng NavigatorKey
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
          ],
        ),
      ),
    );
  }
}
