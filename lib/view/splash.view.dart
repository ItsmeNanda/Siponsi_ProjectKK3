import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_project/utils/global.colors.dart';
import 'package:login_project/view/login.view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // Simulate a 2-second delay before navigating to the LoginView
    Timer(
      const Duration(seconds: 2),
      () {
        Get.to(LoginView());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/pana.png',
              width: 300,
              height: 150,
            ),
            SizedBox(height: 250), // Tambahkan margin top di sini
            // Use FutureBuilder to show a loading indicator
            FutureBuilder(
              future: Future.delayed(Duration(seconds: 2)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  return Container(); // You can return an empty container or customize it accordingly
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
