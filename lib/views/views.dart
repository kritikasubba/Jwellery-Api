import 'package:dio/dio.dart';
import 'package:jwellery_api/model/details.dart';

Future <Details> fetchData () async {
  var dio = Dio();

  final response = await dio.get('https://fakestoreapi.com/products/category/jewelery');

if(response.statusCode == 200) {
  var res = response.data;

  var values = Details.fromJson(res);
  return res;
}
else {
  throw Exception('unsucessful');
}
  
}