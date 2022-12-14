

import 'package:dio/dio.dart';
import 'package:example1/constants/api_constants.dart';

class ApiService{
  final Dio _dio= Dio();

  Future<Response ?> getPostData()async{
    try {
      final Response? response = await _dio.get('https://jsonplaceholder.typicode.com/comments');
      return response;
    }catch(err){
      print("Erorr:$err");
    }
  }

}