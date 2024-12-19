import 'package:dio/dio.dart';
import 'package:flight_schedule/core/remote/remote_data_source.dart';

class RemoteDataSourceImpl extends RemoteDataSource{
  Dio dio;
  RemoteDataSourceImpl({required this.dio});
  
  Future<void> configuration(
      {required String baseUrl,
      }) async {
    dio.options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        contentType: Headers.jsonContentType,);
  }
  @override
  Future<Object?> get({required String url}) async {
    try{
      final result = await dio.get(url);
      return result;
    }catch(e){
      return e.toString();
    }
    
  }
  
}