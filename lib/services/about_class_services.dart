// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<AboutServices> AboutFromJson(String str) => List<AboutServices>.from(json.decode(str).map((x) => AboutServices.fromJson(x)));

String postToJson(List<AboutServices> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AboutServices {
    // int userId;
    // int id;
    String name;
    String description;
    // String? body;

    AboutServices({
      //  required this.userId,
      //  required this.id,
       required this.name,
       required this.description,
        // this.body,
    });

    factory AboutServices.fromJson(Map<String, dynamic> json) => AboutServices(
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
