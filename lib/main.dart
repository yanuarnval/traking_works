import 'package:flutter/material.dart';

import 'package:tracking_works/theme/theme_app.dart';

import 'package:tracking_works/view/LoginPageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TrakingWorks.Light(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: LoginPageView(),
    );
  }
}
