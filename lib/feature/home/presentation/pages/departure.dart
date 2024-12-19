import 'package:flight_schedule/feature/home/presentation/bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeparturePage extends StatefulWidget {
  const DeparturePage({super.key});

  @override
  State<DeparturePage> createState() => _DeparturePageState();
}

class _DeparturePageState extends State<DeparturePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BlocBloc,BlocState>(builder: (context,state){
      // if(state is DepartureLoadedState){
        
      // }
      return const SizedBox.shrink();
    });
  }
}