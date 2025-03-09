import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String email, password;
  const HomePage({super.key, required this.email, required this.password});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(widget.email),
          Text(widget.password),
        ],
      ),
    );
  }
}
