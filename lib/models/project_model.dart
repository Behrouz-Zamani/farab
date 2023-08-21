class ProjectModel
{
  String id;
  String name;
  String img;

  ProjectModel ({
   required this.id, 
    required this.name,
    required  this.img});

}

List<ProjectModel> projectlist =[
  ProjectModel(id: '1', name: 'پروژه های آبی', img: 'https://www.farab.com/fa/wp-content/uploads/2019/05/deralok-IMG_3472-270x270.jpg'),
  ProjectModel(id: '2', name: 'پزوژه های ریلی', img: 'https://www.farab.com/fa/wp-content/uploads/2019/05/line7-9A3A8025-270x270.jpg'),
  ProjectModel(id: '3', name: 'پروژه های حرارتی', img: 'https://www.farab.com/fa/wp-content/uploads/2016/12/32-1-270x270.jpg'),
  ProjectModel(id: '4', name: 'کنتور هوشمند', img: 'https://www.farab.com/fa/wp-content/uploads/2019/06/sg.jpg'),
  ProjectModel(id: '5', name: 'نفت، گاز، پتروشیمی', img: 'https://www.farab.com/fa/wp-content/uploads/2019/07/22to24-270x270.jpg')
];