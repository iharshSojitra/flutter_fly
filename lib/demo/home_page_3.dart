import 'package:flutter/material.dart';
import 'package:flutter_fly/demo/api_service_h.dart';
import 'package:flutter_fly/demo/detailsPage2.dart';

class HomePage3 extends StatefulWidget {
  const HomePage3({super.key});

  @override
  State<HomePage3> createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home 3"),
        ),
        body: FutureBuilder(
          future: GetSeviceApi.getServiceWithModel(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  final Products = snapshot.data![index];
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPAge2(
                                image: Products.image.toString(),
                                title: Products.title.toString(),
                                subtitle: Products.price.toString()),
                          ));
                    },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(Products.image.toString()),
                    ),
                    title: Text(Products.title.toString()),
                    subtitle: Text(Products.price.toString()),
                    trailing: Text(Products.id.toString()),
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
