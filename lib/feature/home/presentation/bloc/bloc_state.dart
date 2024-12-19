part of 'bloc_bloc.dart';

@immutable
sealed class BlocState extends Equatable {}

final class BlocInitial extends BlocState {
  @override
  List<Object?> get props => [];
}
class DepartureLoadedState extends BlocState{
  
  @override
  List<Object?> get props => [];
  
}
