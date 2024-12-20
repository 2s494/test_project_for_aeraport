part of 'bloc_bloc.dart';

@immutable
sealed class BlocState extends Equatable {}

final class BlocInitial extends BlocState {
  @override
  List<Object?> get props => [];
}
class DepartureLoadedState extends BlocState{
  final List<DepartureFlight>? listOfFlights;
  DepartureLoadedState({this.listOfFlights});
  @override
  List<Object?> get props => [listOfFlights];
}

class ArrivalLoadedState extends BlocState{
  final List<ArrivalFlight>? listOfFlights;
  ArrivalLoadedState({this.listOfFlights});
  @override
  List<Object?> get props => [listOfFlights];
}

class LoadingState extends BlocState{
  @override
  List<Object?> get props => [];
}
