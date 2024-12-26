class MyTechModel{

  final String name;
  final String svgData;
  final String description;
  final List<MyTechSkillsModel> skills;

  const MyTechModel({
    required this.name,
    required this.svgData,
    required this.description,
    required this.skills
  });

}

class MyTechSkillsModel{
  final String title;
  final List<String> skills;

  const MyTechSkillsModel({
    required this.title,
    required this.skills
  });

}