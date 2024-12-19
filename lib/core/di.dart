import 'package:dio/dio.dart';
import 'package:flight_schedule/core/constants.dart';
import 'package:flight_schedule/core/remote/remote_data_source.dart';
import 'package:flight_schedule/core/remote/remote_data_source_impl.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(dio: Dio())..configuration(baseUrl: Apis.baseUrl));
}