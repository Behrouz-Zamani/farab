class HistoryOkModel {
  String id;
  String groupe;
  String matn;

  HistoryOkModel({required this.id, required this.groupe, required this.matn});
}

List<HistoryOkModel> historyOkModel = [
  HistoryOkModel(id: '0', groupe: 'دهه‌اول', matn: 'متن دهه اول'),
  HistoryOkModel(id: '1', groupe: 'دهه‌دوم', matn: 'متن دهه دوم'),
  HistoryOkModel(id: '2', groupe: 'دهه‌سوم', matn: 'متن دهه سوم'),
  HistoryOkModel(id: '3', groupe: 'دهه‌چهارم', matn: 'متن دهه چهارم'),
];
