import 'dart:convert';

List<ListVideoHost> postFromJson(String str) => List<ListVideoHost>.from(json.decode(str).map((x) => ListVideoHost.fromJson(x)));

String postToJson(List<ListVideoHost> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class ListVideoHost 
{
  String? id;
  String? name;
  String? thume;
  String? videourl;

  ListVideoHost ({
    this.id,
    this.name,
    this.thume,
    this.videourl,
  });
      factory ListVideoHost.fromJson(Map<String, dynamic> json) => ListVideoHost(
        
        id: json["id"],
        name: json["name"],
        thume: json["thume"],
        videourl: json["videourl"],
    );

    Map<String, dynamic> toJson() => {
     
        "id": id,
        "name": name,
        "thume": thume,
        "videourl": videourl,
    };
}