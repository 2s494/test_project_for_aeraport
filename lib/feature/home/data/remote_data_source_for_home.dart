import 'package:flight_schedule/core/di.dart';
import 'package:flight_schedule/core/remote/remote_data_source.dart';
import 'package:flight_schedule/feature/home/domain/model.dart';

abstract class RemoteDataSourceForHome {
  Future<List<Flight>?> listOfDepartures({required String url});
}

class RemoteDataSourceForHomeImpl extends RemoteDataSourceForHome {
  @override
  Future<List<Flight>?> listOfDepartures({required String url}) async {
    try {
      final result = locator<RemoteDataSource>().get(url: url);
      final parsing = parseFlights(result as List<Flight>);
      return parsing;
    } catch (e) {
      return null;
    }
  }
}