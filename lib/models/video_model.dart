import 'dart:convert';
// To parse this JSON data, do
//
//     final videosModels = videosModelsFromJson(jsonString);


List<VideosModels> videosModelsFromJson(String str) => List<VideosModels>.from(json.decode(str).map((x) => VideosModels.fromJson(x)));

String videosModelsToJson(List<VideosModels> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VideosModels {
    String? id;
    String? title;
    String? price;
    String? changes;
    Status? status;

    VideosModels({
        this.id,
        this.title,
        this.price,
        this.changes,
        this.status,
    });

    factory VideosModels.fromJson(Map<String, dynamic> json) => VideosModels(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        changes: json["changes"],
        status: statusValues.map[json["status"]],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "changes": changes,
        "status": statusValues.reverse[status],
    };
}

enum Status {
    N,
    P,
    // ignore: constant_identifier_names
    THE_107
}

final statusValues = EnumValues({
    "n": Status.N,
    "p": Status.P,
    "-1.07%": Status.THE_107
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
