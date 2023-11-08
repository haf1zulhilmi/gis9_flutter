import 'package:flutter/material.dart';
import 'package:gis9_flutter/constant/color.dart';
import 'package:gis9_flutter/screen/main_menu_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background01.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
                child: Image.asset(
                  'assets/gis9_icon.png',
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 32),
                child: Text(
                  'Aplikasi Mobil GIS9',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: whiteColor),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenuScreen(
                                    isPublic: false,
                                  )));
                    },
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Pengguna',
                            style: TextStyle(color: whiteColor, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainMenuScreen(
                                    isPublic: true,
                                  )));
                    },
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(30)),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Awam',
                            style: TextStyle(color: whiteColor, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 128),
                child: Text(
                  'Pihak PLANMalaysia@Negeri Sembilan tidak akan bertanggungjawab bagi sebarang kehilangan dan kerugian yang disebabkan oleh pengguna maklumat yang diperolehi dari laman ini Copyright © 2023',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: whiteColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
