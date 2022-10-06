import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_provider/base_service/base_client.dart';
import 'package:tutorial_provider/exception/api_exception.dart';

class BaseService{
 final BaseClient client;
 BaseService(this.client);

 Future<dynamic> get(String path,{Map<String,dynamic>? queryParameters, Map<String, dynamic>? headers}) async{
   final response = await client.dio.get(path,queryParameters: queryParameters, options: Options(headers: headers));
    return _handleResponse(response);
}

Future<dynamic> post(String path,{Map<String,dynamic>? queryParameters, Map<String, dynamic>? headers}) async {
   final response = await client.dio.post(path,queryParameters: queryParameters,options: Options(headers: headers));
   return _handleResponse(response);
}



dynamic _handleResponse(Response response){
   final statusCode = response.statusCode ?? 0;
   if(statusCode < 200 || statusCode >= 300){
     if(response.data["error"]?["detail"] != null){
       throw response.data["error"]["detail"] as String;
     }else{
       throw ApiException.fromJson(response.data);
     }
   }
   return response.data;
}
}