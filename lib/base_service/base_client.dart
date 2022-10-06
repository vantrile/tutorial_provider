import 'package:dio/dio.dart';


typedef ApiErrorCallBack = Function(DioError e, ErrorInterceptorHandler handler);
class BaseClient {
  static const kTimeOut = 30000;
  late Dio dio;
  late String baseUrl;

  BaseClient() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: kTimeOut,
      receiveTimeout: kTimeOut,
      validateStatus: (status) => status != 401,
      headers: {'Content-Type': 'application/json'},
    ));
  }

  void errorCallBack(ApiErrorCallBack errorCallBack){
    dio.interceptors.add(InterceptorsWrapper(onError: errorCallBack));
  }

}
