import 'package:flight_schedule/core/di.dart';
import 'package:flight_schedule/feature/home/presentation/bloc/bloc_bloc.dart';
import 'package:flight_schedule/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await setupLocator();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (context) => BlocBloc())],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Home(),
        ));
  }
}
