class tajdidVid
{
  String? id;
  String? title;
  String? price;
  String? status;


tajdidVid({
  this.id,
  this.title,
  this.price,
  this.status,
});

tajdidVid.fromJson(Map<String, dynamic> element)
{
  id=element["id"];
  title=element["title"];
  price=element["price"];
  status=element["status"];
}
}

