import 'package:flutter/material.dart';
import 'package:flutter_fly/get_api/product_model.dart';
import 'package:flutter_fly/get_api/product_service.dart';

class HomePageApi extends StatefulWidget {
  const HomePageApi({super.key});

  @override
  State<HomePageApi> createState() => _HomePageApiState();
}

class _HomePageApiState extends State<HomePageApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: GetProductsService.getProductWithModel(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ProductResModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final product = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(product.image.toString()),
                  ),
                  title: Text(product.title.toString()),
                  subtitle: Text(product.price.toString()),
                  trailing: Text(product.id.toString()),
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
