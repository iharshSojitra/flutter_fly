import 'package:flutter/material.dart';
import 'package:flutter_fly/get_api_2/product_details.dart';
import 'package:http/http.dart' as http;

import 'api_service.dart';

class HomePageApi2 extends StatefulWidget {
  const HomePageApi2({super.key});

  @override
  State<HomePageApi2> createState() => _HomePageApi2State();
}

class _HomePageApi2State extends State<HomePageApi2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
        ),
        body: FutureBuilder(
          future: GetProductService.getProductWithModel(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  final products = snapshot.data![index];
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductDetails(
                          title: products.title.toString(),
                          subtitle: products.price.toString(),
                          image: products.image.toString(),
                        ),
                      ));
                    },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(products.image.toString()),
                    ),
                    title: Text(products.title.toString()),
                    subtitle: Text(products.price.toString()),
                    trailing: Text(products.id.toString()),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
