import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../get_api/product_model.dart';

class GetProductService {
  static Future<List<ProductResModel>> getProductWithModel() async {
    http.Response response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    return productResModelFromJson(response.body);
  }
}
