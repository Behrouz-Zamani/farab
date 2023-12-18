import 'dart:convert';

// List<ListVideoHost> postFromJson(String str) => List<ListVideoHost>.from(json.decode(str).map((x) => ListVideoHost.fromJson(x)));

// String postToJson(List<ListVideoHost> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


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
    //   factory ListVideoHost.fromJson(Map<String, dynamic> json) => ListVideoHost(
        
    //     id: json["id"],
    //     name: json["name"],
    //     thume: json["thume"],
    //     videourl: json["videourl"],
    // );

    // Map<String, dynamic> toJson() => {
     
    //     "id": id,
    //     "name": name,
    //     "thume": thume,
    //     "videourl": videourl,
    // };
}
List<ListVideoHost> listVideoHost =[
  ListVideoHost(id: '0',name: 'صنایع ریلی',thume: 'https://www.farab.com/fa/wp-content/uploads/2019/05/IMG_9128.jpg',videourl: 'https://app.farab-co.ir/videos/reili1.mp4'),
  ListVideoHost(id: '1',name: 'مسئولیت اجتماعی',thume: 'https://www.farab.com/fa/wp-content/uploads/2019/07/DJI00108.jpg',videourl: 'https://app.farab-co.ir/videos/exipition.mp4'),
  
  

];