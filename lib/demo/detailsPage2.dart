import 'package:flutter/material.dart';

class DetailsPAge2 extends StatefulWidget {
  final String image, title, subtitle;
  const DetailsPAge2(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  State<DetailsPAge2> createState() => _DetailsPAge2State();
}

class _DetailsPAge2State extends State<DetailsPAge2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details_page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              widget.image,
              height: 150,
              width: 150,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              widget.title,
              textScaleFactor: 2,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              widget.subtitle,
              textScaleFactor: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
