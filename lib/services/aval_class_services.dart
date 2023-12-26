// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<AvalServices> AvalFromJson(String str) => List<AvalServices>.from(json.decode(str).map((x) => AvalServices.fromJson(x)));

String postToJson(List<AvalServices> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AvalServices {
    // int userId;
    // int id;
    String name;
    String description;
    // String? body;

    AvalServices({
      //  required this.userId,
      //  required this.id,
       required this.name,
       required this.description,
        // this.body,
    });

    factory AvalServices.fromJson(Map<String, dynamic> json) => AvalServices(
        // userId: json["userId"],
        // id: json["id"],
        name: json["name"],
        description: json["description"],
        // body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        // "userId": userId,
        // "id": id,
        "name": name,
        "description": description,
        // "body": body,
    };
}
