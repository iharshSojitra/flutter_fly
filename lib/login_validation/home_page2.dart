import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  final String email, password;
  const HomePage2({
    super.key,
    required this.email,
    required this.password,
  });

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(widget.email),
            subtitle: Text(widget.password),
          ),
        ],
      ),
    );
  }
}
