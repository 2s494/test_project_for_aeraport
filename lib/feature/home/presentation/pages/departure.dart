import 'package:flight_schedule/feature/home/presentation/bloc/bloc_bloc.dart';
import 'package:flight_schedule/feature/home/presentation/pages/departure_info.dart';
import 'package:flight_schedule/feature/home/presentation/widgets/time_formatter.dart';
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
    return BlocProvider<BlocBloc>(
      create: (context) => BlocBloc()..add(DepartureEvent()),
      child: BlocBuilder<BlocBloc, BlocState>(builder: (context, state) {
        if (state is LoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is DepartureLoadedState) {

          return ListView.builder(
              itemCount: state.listOfFlights?.length ?? 0,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DepartureInfo(
                                  flight: state.listOfFlights?[index])));
                    },
                    title: Text(
                        state.listOfFlights?[index].city.toString() ?? "",
                        style:  TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.indigo.shade500)),
                    subtitle: Text(
                      state.listOfFlights?[index].aircompany.toString() ?? "",
                      style: const TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    leading: Text(timeFormatter(timeFormat: state.listOfFlights?[index].sched ?? "")),
                    trailing: Text(
                      "No ${state.listOfFlights?[index].flightNumber.toString() ?? ""}",
                      style: const TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              });
              
        }
        return const SizedBox.shrink();
      }),
    );
  }
}
