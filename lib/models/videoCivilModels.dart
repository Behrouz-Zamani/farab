class videoCivilModel{
   String? id;
  String name;
  String url;
  String? description;

  videoCivilModel({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
  });
}

List<videoCivilModel> videocivilmodel=
[
  videoCivilModel(id: '1', name: 'تونل انتقال آب از سد آزد به دشت قروه', url: 'https://www.farab-co.ir/videos/reyli1.mp4', description: 'description'),
  videoCivilModel(id: '2', name: 'سد اردوپاد(جمهوری آذربایجان)', url: 'https://www.farab-co.ir/videos/exipition.mp4', description: 'description'),
  videoCivilModel(id: '3', name: 'عملیات ساختمانی نیروگاه های حرارتی(شیرکوه،دلاهو)', url: 'https://www.farab-co.ir/videos/serilanka.mp4', description: 'description'),

];