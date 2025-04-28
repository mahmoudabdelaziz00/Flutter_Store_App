import 'dart:convert';
import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts({required String categoryName}) async {
    http.Response response = await http.get(
      Uri.parse('https://fakestoreapi.com/products/category/$categoryName'),
    );

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModel> productsList = [];

    for(int i =0; i< data.length; i++){
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList ;
  }
}
