import 'package:flight_schedule/feature/home/presentation/pages/arrivale.dart';
import 'package:flight_schedule/feature/home/presentation/pages/departure.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;
  List<Widget> listOfPages = const [DeparturePage(), ArrivalePage()];
  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(currentIndex == 0
              ? "Departure flights"
              : currentIndex == 1
                  ? "Arrival flights"
                  : ""),
          backgroundColor: const Color.fromRGBO(5, 1, 39, 0.945),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (index) => changeTab(index),
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.flight_takeoff_sharp), label: "Departure"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.flight_land_sharp), label: "Arrival")
            ]),
        body: listOfPages[currentIndex]);
  }
}
