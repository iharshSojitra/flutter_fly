import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String title, subtitle, image;
  const ProductDetails(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail_Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            width: 250,
            child: Image.network(widget.image),
          ),
          SizedBox(height: 20),
          Center(
            child: Text(
              widget.title,
              textScaleFactor: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
