import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  final String email, password;
  const HomePage4({super.key, required this.email, required this.password});

  @override
  State<HomePage4> createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home 4"),
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("$index"),
              ),
              title: Text(widget.email),
              subtitle: Text(widget.password),
            );
          },
        ));
  }
}
