import 'package:flutter/material.dart';
import 'package:myapp/Pages/aboutMe.dart';

import 'Pages/home.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/about_MSR' : (context) => aboutMe()
      },
      title: 'MSR',


    );
  }
}
