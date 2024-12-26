
import 'package:kph_website/core/common/app_svgs.dart';
import 'package:kph_website/data/models/my_tech.dart';

class MyTechRepo{

  static List<MyTechModel> myTechData = [
    MyTechModel(
        name: "Flutter",
        description: "",
        svgData: AppSvgs.flutterLogo,
        skills: [
          MyTechSkillsModel(
              title: "Platform",
              skills: [
                "Android",
                "iOS",
                "macOS",
                "Web",
                "Window"
              ]
          ),
          MyTechSkillsModel(
              title: "State Managements",
              skills: [
                "BloC",
                "GetX",
                "Provider",
              ]
          ),
          MyTechSkillsModel(
              title: "Architecture",
              skills: [
                "Clean Architecture",
                "MVC",
                "Modular",
              ]
          ),
          MyTechSkillsModel(
              title: "Network",
              skills: [
                "http",
                "Dio",
                "Retrofit",
                "GetConnect",
                "Websocket client",
                "Socket.io client",
                "GraphQL"
              ]
          ),
          MyTechSkillsModel(
              title: "Databases",
              skills: [
                "SharedPreferences",
                "SqLite",
                "MongoDart",
                "Firebase",
                "Supabase",
              ]
          ),
          MyTechSkillsModel(
              title: "Others",
              skills: [
                "Offline first (Sync)",
                "Animations",
                "Background Services",
                "Map Integration",
                "Map Services",
                "Responsive orientations",
                "Tensor Flow",
                "Camera & Image processing",
                "Web scrapping",
              ]
          ),
        ]
    ),
    MyTechModel(
        name: "Dart",
        description: "",
        svgData: AppSvgs.dartLogo,
        skills: [
          MyTechSkillsModel(
            title: "Framework",
            skills: [
              "Flutter",
              "Dart Frog",
              "Shelf"
            ]
          )
        ]
    ),
    MyTechModel(
        name: "Python",
        description: "",
        svgData: AppSvgs.pythonLogo,
        skills: [
          MyTechSkillsModel(
              title: "Backend Framework",
              skills: [
                "Flask",
              ]
          ),
          MyTechSkillsModel(
              title: "Machine Learning",
              skills: [
                "Tensor Flow",
                "Scikit Learn",
                "Image Processing"
              ]
          ),
        ]
    ),
    MyTechModel(
        name: "Java",
        description: "",
        svgData: AppSvgs.javaLogo,
        skills: [
          MyTechSkillsModel(
            title: "Development",
            skills: [
              "Android Development"
            ]
          ),
          MyTechSkillsModel(
              title: "Design Pattern",
              skills: [
                "MVVM",
              ]
          ),
          MyTechSkillsModel(
              title: "Database",
              skills: [
                "Room",
                "SharedPreferences"
              ]
          ),
        ]
    ),
    MyTechModel(
        name: "Others",
        description: "",
        svgData: AppSvgs.softwareSkillLogo,
        skills: [
          MyTechSkillsModel(
            title: "Database",
            skills: [
              "Mongo DB",
              "PostgresQL",
            ]
          ),
          MyTechSkillsModel(
            title: "Communication",
            skills: [
              "Socket IO",
              "Web Socket",
              "GraphQL",
              "RESTful APIs",
              "http"
            ]
          ),
          MyTechSkillsModel(
            title: "Deployment",
            skills: [
              "Backend Service Deployment",
              "Frontend Websites Hosting",
              "Mobile Applications Store Publishing",
            ]
          )
        ]
    ),
  ];

}