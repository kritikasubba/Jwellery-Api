
import 'package:dio/dio.dart';
import 'package:jwellery_api/model/details.dart';
List<Details> jwelleryDetails = [];
Future <List<Details>> fetchData () async {
  var dio = Dio();

  final response = await dio.get('https://fakestoreapi.com/products/category/jewelery');

if(response.statusCode == 200) {


  List<dynamic> values = [];
  values = response.data;
  if(values.isNotEmpty) {
    for(int i= 0; i< values.length; i++)
    {
      if(values[i]!= null) {
    jwelleryDetails.add(Details.fromJson(values[i]));
      }

    }
    
  }
  return jwelleryDetails;

  

}
else {
  throw Exception('unsucessful');
}
  
}