List<ArrivalFlight> parseFlightsForArrivale(final response) {
  return (response.data['flights'] as List)
      .map((json) => ArrivalFlight.fromJson(json))
      .toList();
}

class ArrivalFlight {
  String aircompany;
  String flightNumber;
  String letter;
  String aircraftType;
  String codeShares;
  String sched;
  String plan;
  String fact;
  String estimated;
  String airport;
  String cityCode;
  String city;
  String terminal;
  String country;
  String movement;
  String flightStatus;
  String fidsStatusTime;
  Baggage baggage;

  ArrivalFlight(
      {required this.aircompany,
      required this.flightNumber,
      required this.letter,
      required this.aircraftType,
      required this.codeShares,
      required this.sched,
      required this.plan,
      required this.fact,
      required this.estimated,
      required this.airport,
      required this.cityCode,
      required this.city,
      required this.terminal,
      required this.country,
      required this.movement,
      required this.flightStatus,
      required this.fidsStatusTime,
      required this.baggage,
     });
  factory ArrivalFlight.fromJson(Map<String, dynamic> json) {
    return ArrivalFlight(
        aircompany: json["aircompany"],
        flightNumber: json["flightnumber"],
        letter: json["letter"],
        aircraftType: json["aircrafttype"],
        codeShares: json["codeshares"],
        sched: json["sched"],
        plan: json["plan"],
        fact: json["fact"],
        estimated: json["estimated"],
        airport: json["airport"],
        cityCode: json["city_code"],
        city: json["city"],
        terminal: json["terminal"],
        country: json["country"],
        movement: json["movement"],
        flightStatus: json["flight_status"],
        fidsStatusTime: json["fids_status_time"],
        baggage: Baggage.fromJson(json["baggage"]));
  }
  @override
  String toString() {
    return " $aircompany $flightNumber $letter $aircraftType $codeShares $sched $plan $fact $estimated $airport $cityCode $city $terminal $country $movement $flightStatus $fidsStatusTime $Baggage ";
  }
}

class Baggage {
  String plan;
  String fact;
  String planBegin;
  String planEnd;
  String factBegin;
  String factEnd;
  String status;
  Baggage({
    required this.plan,
    required this.fact,
    required this.planBegin,
    required this.planEnd,
    required this.factBegin,
    required this.factEnd,
    required this.status,
  });
  factory Baggage.fromJson(Map<String, dynamic> json) {
    return Baggage(
        plan: json["plan"],
        fact: json["fact"],
        planBegin: json["plan_begin"],
        planEnd: json["plan_end"],
        factBegin: json["fact_begin"],
        factEnd: json["fact_end"],
        status: json["status"]);
  }
  @override
  String toString() {
    return " $plan $fact $planBegin $planEnd $factBegin $factEnd $status";
  }
}
