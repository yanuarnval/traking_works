import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tracking_works/view/HomePageView.dart';

import 'package:tracking_works/view/LoginPageView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xff286782)));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: HomePageView(),
    );
  }
}
