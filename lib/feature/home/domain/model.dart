List<Flight> parseFlights(final response) {
  return (response.data['flights'] as List).map((json) => Flight.fromJson(json)).toList();
}

class Flight {
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
  CheckIn checkIn;
  Gate gate;
  Boarding boarding;

  Flight(
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
      required this.boarding,
      required this.checkIn,
      required this.gate});
  factory Flight.fromJson(Map<String, dynamic> json) {
    return Flight(
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
        boarding: Boarding.toJson(json["boarding"]),
        checkIn: CheckIn.fromJson(json["check_in"]),
        gate: Gate.toJson(json["gate"]));
  }
}

class CheckIn {
  String plan;
  String fact;
  String planBegin;
  String planEnd;
  String factBegin;
  String factEnd;
  String status;
  CheckIn({
    required this.plan,
    required this.fact,
    required this.planBegin,
    required this.planEnd,
    required this.factBegin,
    required this.factEnd,
    required this.status,
  });
  factory CheckIn.fromJson(Map<String, dynamic> json) {
    return CheckIn(
        plan: json["plan"],
        fact: json["fact"],
        planBegin: json["plan_begin"],
        planEnd: json["plan_end"],
        factBegin: json["fact_begin"],
        factEnd: json["fact_end"],
        status: json["status"]);
  }
}

class Gate {
  String plan;
  String fact;
  String planEnd;
  String planBegin;
  String factBegin;
  String factEnd;
  String status;
  Gate({
    required this.planBegin,
    required this.plan,
    required this.fact,
    required this.planEnd,
    required this.factBegin,
    required this.factEnd,
    required this.status,
  });
  factory Gate.toJson(Map<String, dynamic> json) {
    return Gate(
        plan: json["plan"],
        fact: json["fact"],
        planBegin: json["plan_begin"],
        planEnd: json["plan_end"],
        factBegin: json["fact_begin"],
        factEnd: json["fact_end"],
        status: json["status"]);
  }
}

class Boarding {
  String planBegin;
  String planEnd;
  String factBegin;
  String factEnd;
  String status;

  Boarding({
    required this.planBegin,
    required this.planEnd,
    required this.factBegin,
    required this.factEnd,
    required this.status,
  });

  factory Boarding.toJson(Map<String, dynamic> json) {
    return Boarding(
        planBegin: json["plan_begin"],
        planEnd: json["plan_end"],
        factBegin: json["fact_begin"],
        factEnd: json["fact_end"],
        status: json["status"]);
  }
}
