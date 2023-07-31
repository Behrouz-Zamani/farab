class videoReilyModel
{
  String id;
  String name;
  String url;
  String description;

  videoReilyModel({
    required this.id,
    required this.name,
    required this.url,
    required this.description,
  });
}
List<videoReilyModel> videoreilymodel =
[
  videoReilyModel(id: '1', name: 'طراحی، تامین و اجرای تجهیزات و ناوگان پروژه زیرگذر راه آهن تهران-تبریز', url: 'https://www.farab-co.ir/videos/reyli.mp4', description: 'description'),
  videoReilyModel(id: '2', name: 'طراحی، تامین و اجرای تجهیزات و ناوگان پروژه قطار شهری گلشهر-هشتگرد', url: 'https://www.farab-co.ir/videos/logo.mp4', description: 'description'),
  videoReilyModel(id: '3', name: 'احداث قطعه اول تونل قطار شهری کرمانشاه', url: 'https://www.farab-co.ir/videos/farab-en.mp4', description: 'description'),
];