import 'package:flight_schedule/feature/home/presentation/pages/departure.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(initialPage: 0);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          DeparturePage()
        ],
      ),
    );
  }
}