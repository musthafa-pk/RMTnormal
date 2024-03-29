import 'package:flutter/material.dart';
import 'package:rentmything/bottomNavigationPage.dart';
import 'package:rentmything/constants/constants.dart';
import 'package:rentmything/views/auth/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: color1),
        useMaterial3: true,
        fontFamily: 'Poppins',
        backgroundColor: Colors.white,
      ),
      home: LoginPage()
    );
  }
}


