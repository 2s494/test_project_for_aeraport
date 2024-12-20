import 'package:flight_schedule/feature/home/domain/departure_model.dart';
import 'package:flight_schedule/feature/home/presentation/widgets/text_style.dart';
import 'package:flight_schedule/feature/home/presentation/widgets/time_formatter.dart';
import 'package:flight_schedule/feature/home/presentation/widgets/widget_for_info_keys.dart';
import 'package:flutter/material.dart';

class DepartureInfo extends StatefulWidget {
  final DepartureFlight? flight;
  const DepartureInfo({required this.flight,super.key});

  @override
  State<DepartureInfo> createState() => _DepartureInfoState();
}

class _DepartureInfoState extends State<DepartureInfo> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        actions: [
         const Icon(Icons.location_on_sharp),
          Padding(
            padding: const EdgeInsets.only(right: 20 ),
            child: Text("T${widget.flight?.terminal.toString() ?? ""}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          )
        ],
        centerTitle: true,
        title: Text(widget.flight?.city ?? ""),
        titleTextStyle: const TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold,fontSize: 22),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sizedBox(context: context, child:  Text("Country : ",style: textStyleForInfoPage()),),

              sizedBox(context: context, child: Text(widget.flight?.country ?? "",style: textStyleForInfoPage(),),)
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sizedBox(context: context, child:  Text("Aircraft type : ",style: textStyleForInfoPage()),),

              sizedBox(context: context, child: Text(widget.flight?.aircraftType.toString() ?? "",style: textStyleForInfoPage(),),)
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              sizedBox(context: context, child:  Text("Flight status : ",style: textStyleForInfoPage()),),

              sizedBox(context: context, child: Text(widget.flight?.flightStatus.toString() ?? "",style: textStyleForInfoPage(),),)
              
            ],
          ),

          // Text(widget.flight?.cityCode.toString() ?? ""),
          // Text(widget.flight?.city ?? ""),
          // Text(widget.flight?.codeShares ?? ""),
          // Text(widget.flight?.estimated ?? ""),
          // Text(widget.flight?.fact ?? ""),
          // Text(widget.flight?.fidsStatusTime ?? ""),
          // Text(widget.flight?.flightStatus ?? ""),
          // Text(widget.flight?.letter ?? ""),
          // Text(widget.flight?.movement ?? ""),
          // Text(widget.flight?.plan ?? ""),
          // Text(widget.flight?.sched ?? ""),
          // Text(widget.flight?.boarding.planEnd ?? ""),
          // Text(widget.flight?.checkIn.status ?? ""),
          // Text(widget.flight?.gate.status ?? ""),
        ],
      ),
    );
  }
}