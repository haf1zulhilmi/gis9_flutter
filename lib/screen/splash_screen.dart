import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gis9_flutter/constant/color.dart';
import 'package:gis9_flutter/screen/welcome_page.dart';
import 'package:gis9_flutter/util/preference.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void redirectPage(int duration) {
    Timer(Duration(seconds: duration), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WelcomePage()));
    });
  }

  void checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('www.google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        onLoading();
        print('connected');
      }
    } on SocketException catch (_) {
      print('not connected');
    }
  }

  onLoading() async {
    redirectPage(1);
  }

  @override
  void initState() {
    super.initState();
    checkInternetConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Put image here
            Image.asset('assets/gis9_icon.png'),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: LinearProgressIndicator(
                color: primaryColor,
                backgroundColor: whiteColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
