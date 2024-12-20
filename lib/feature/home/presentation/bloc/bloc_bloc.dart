import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flight_schedule/core/di.dart';
import 'package:flight_schedule/core/remote/remote_data_source.dart';
import 'package:flight_schedule/feature/home/domain/arrivale_model.dart';
import 'package:flight_schedule/feature/home/domain/departure_model.dart';
import 'package:meta/meta.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc() : super(BlocInitial()) {
    on<DepartureEvent>((event, emit) async {
      emit(LoadingState());
        final result = await locator<RemoteDataSource>().get(url: "DEPARTURE");
        final afterParsing = parseFlights(result);
      emit(DepartureLoadedState(listOfFlights: afterParsing));
    });
    on<ArrivalEvent>((event,emit) async {
      emit(LoadingState());
      final result = await locator<RemoteDataSource>().get(url: "ARRIVAL");
        final afterParsing = parseFlightsForArrivale(result);
      emit(ArrivalLoadedState(listOfFlights: afterParsing));
    });
  }
}
