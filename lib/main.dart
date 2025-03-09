import 'package:flutter/material.dart';
import 'package:flutter_fly/get_api_2/homepage_api_2.dart';
import 'demo/login_screen_2.dart';
import 'demo/login_screen_3.dart';
import 'get_api/home_page_api.dart';
import 'login_validation/signup_page.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent),
        useMaterial3: false,
      ),
      home: LoginSCreen3(),
      debugShowCheckedModeBanner: false,
    );
  }
}
