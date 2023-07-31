class videoTajdidModel {
  String id;
  String name;
  String url;
  String description;
  videoTajdidModel({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
  });
}
List<videoTajdidModel> videotajdidmodel=
[
  videoTajdidModel(id: '1', name: 'احداث نیروگاه 10 مگاواتی خورشیدی زاهدان', url: 'https://www.farab-co.ir/videos/reyli.mp4', description: 'description'),
  videoTajdidModel(id: '2', name: 'احداث نیروگاه 10 مگاواتی خورشیدی اردکان', url: 'https://www.farab-co.ir/videos/logo.mp4', description: 'description'),
  videoTajdidModel(id: '3', name: 'احداث نیروگاه 10 مگاواتی خورشیدی اشکذر', url: 'https://www.farab-co.ir/videos/farab-en.mp4', description: 'description'),
  videoTajdidModel(id: '3', name: 'احداث نیروگاه زیست توده ( پسماند شهری) به روش هاضم', url: '', description: 'description'),
];