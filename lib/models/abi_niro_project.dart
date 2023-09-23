class AbiNiroProject{
  String id;
  String title;
  String img;
  String detail;

  AbiNiroProject({
    required this.id,
    required this.title,
    required this.img,
    required this.detail,
  });
}

List<AbiNiroProject> abiproject = [
  AbiNiroProject(id: 'id', title: 'title', img: 'img', detail: 'detail'),
];