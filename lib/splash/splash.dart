import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFEC2028),
        body: Center(
          child: SizedBox(
            width: Get.width * 0.5,
            height: Get.height * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo/logo-splash.png'),
                const Padding(padding: EdgeInsets.only(top: 5)),
                const Text(
                  "MyTelkomsel",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
