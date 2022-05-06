// To parse this JSON data, do
//
//     final hoca = hocaFromJson(jsonString);

import 'dart:convert';

Hoca hocaFromJson(String str) => Hoca.fromJson(json.decode(str));

String hocaToJson(Hoca data) => json.encode(data.toJson());

class Hoca {
  Hoca({
    required this.reciters,
  });

  List<Reciter> reciters;

  factory Hoca.fromJson(Map<String, dynamic> json) => Hoca(
        reciters: List<Reciter>.from(
            json["reciters"].map((x) => Reciter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "reciters": List<dynamic>.from(reciters.map((x) => x.toJson())),
      };
}

class Reciter {
  Reciter({
    required this.id,
    required this.name,
    required this.server,
    required this.rewaya,
    required this.count,
    required this.letter,
    required this.suras,
  });

  String id;
  String name;
  String server;
  String rewaya;
  String count;
  String letter;
  String suras;

  factory Reciter.fromJson(Map<String, dynamic> json) => Reciter(
        id: json["id"],
        name: json["name"],
        server: json["Server"],
        rewaya: json["rewaya"],
        count: json["count"],
        letter: json["letter"],
        suras: json["suras"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "Server": server,
        "rewaya": rewaya,
        "count": count,
        "letter": letter,
        "suras": suras,
      };
}
