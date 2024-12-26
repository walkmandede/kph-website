import 'package:flutter/material.dart';
import 'package:kph_website/presentation/modules/about_me/pages/about_me_page.dart';
import 'package:kph_website/presentation/modules/contacts/pages/contact_page.dart';
import 'package:kph_website/presentation/modules/educations/pages/educations_page.dart';
import 'package:kph_website/presentation/modules/experiences/pages/experiences_page.dart';
import 'package:kph_website/presentation/modules/projects/pages/projects_page.dart';
import 'package:kph_website/presentation/modules/tech_skills/pages/tech_skills_page.dart';

import 'app_svgs.dart';

enum EnumHomePageTabs{
  aboutMe(label: "About",widget: AboutMePage()),
  techSkills(label: "Techs",widget: TechSkillsPage()),
  educations(label: "Educations",widget: EducationsPage()),
  experiences(label: "Experiences",widget: ExperiencesPage()),
  projects(label: "Projects",widget: ProjectsPage()),
  contacts(label: "Contact",widget: ContactsPage());
  final String label;
  final Widget widget;

  const EnumHomePageTabs({required this.label,required this.widget});
}

enum EnumSocialApps{
  linkedIn(label: "LinkedIn",link: "https://www.linkedin.com/in/kyaw-phyoe-han-aba3b9255",svgString: AppSvgs.linkedIn,),
  github(label: "Github",link: "https://github.com/walkmandede",svgString: AppSvgs.github,),
  line(label: "LinkedIn",link: "https://line.me/ti/p/JA-guJljNI",svgString: AppSvgs.line,),
  whatsapp(label: "LinkedIn",link: "https://wa.me/qr/KFTUUP5FDQXFC1",svgString: AppSvgs.whatsapp,);
  final String label;
  final String link;
  final String svgString;

  const EnumSocialApps({
    required this.label,
    required this.link,
    required this.svgString
  });
}