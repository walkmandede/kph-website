
class MyProjectModel{
  final String name;
  final String overview;
  final List<String> highlight;
  final List<MyProjectMeta> metas;
  final List<String> onlineImages;

  const MyProjectModel({
    required this.name,
    required this.overview,
    required this.highlight,
    required this.metas,
    required this.onlineImages,
  });

}


class MyProjectMeta{

  final String name;
  final String data;

  const MyProjectMeta({
    required this.name,
    required this.data,
  });

}

