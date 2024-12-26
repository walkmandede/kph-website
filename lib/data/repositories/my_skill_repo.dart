
import 'package:kph_website/core/common/app_assets.dart';
import 'package:kph_website/core/common/app_svgs.dart';
import 'package:kph_website/data/models/my_skill_model.dart';
import 'package:kph_website/data/models/my_tech.dart';

class MySkillRepo{

  static List<MySkillModel> mySkillsData = [
    MySkillModel(
        name: "Mobile Development",
        description: "I am an expert in Flutter for building\nmobile applications in both Android & iOS",
        svgData: AppSvgs.mobileDevelopmentLogo
    ),
    MySkillModel(
        name: "Web Development",
        description: "I build dynamic websites using Flutter",
        svgData: AppSvgs.webDevelopmentLogo
    ),
    MySkillModel(
        name: "Backend Development",
        description: "I build backend services using Python Flask or Node.js",
        svgData: AppSvgs.backendDevelopmentLogo
    ),
    MySkillModel(
        name: "Database Management",
        description: "PostgreSQL, MongoDB",
        svgData: AppSvgs.databaseManagementLogo
    ),
    MySkillModel(
        name: "Machine Learning",
        description: "I got some experiences in\ntraining deep learning models and image processing.",
        svgData: AppSvgs.machineLearningLogo
    ),
  ];

}