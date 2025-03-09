import 'package:flutter/material.dart';
import 'package:flutter_fly/get_api/product_model.dart';

import 'package:http/http.dart' as http;

class GetProductsService {
  static Future<List<ProductResModel>> getProductWithModel() async {
    http.Response response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    return productResModelFromJson(response.body);
  }
}
