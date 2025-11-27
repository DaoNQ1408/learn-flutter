import 'package:first_prj/pages/first_page.dart';
import 'package:first_prj/pages/home_page.dart';
import 'package:first_prj/pages/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static List names = ["Mitch", "Sharon", "Vince"];

  void userTapped() {
    print("User tapped");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/home': (context) => HomePage(),
        '/setting': (context) => SettingPage(),
      },
    );
  }
}
