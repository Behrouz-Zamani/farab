class videoHoshmandModel{
  String id;
  String name;
  String url;
  String description;

  videoHoshmandModel({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
  });
}
List<videoHoshmandModel> videohoshmandmodel=
[
  videoHoshmandModel(id: '1', name: 'طراحی، تامین و اجرای فراسامانه هوشمند اندازه گیری و مدیریت انرژی در استان بوشهر', url: 'https://www.farab-co.ir/videos/reyli.mp4', description: 'description'),
  videoHoshmandModel(id: '2', name: 'احداث نیروگاه 10 مگاواتی خورشیدی زاهدان', url: 'https://www.farab-co.ir/videos/logo.mp4', description: 'description'),
  videoHoshmandModel(id: '3', name: 'احداث نیروگاه 10 مگاواتی اشکذر', url: 'https://www.farab-co.ir/videos/farab-en.mp4', description: 'description'),
  videoHoshmandModel(id: '4', name: 'نیروگاه زیست توده( پسماند شهری) به روش هاضم', url: 'url', description: 'description'),
];