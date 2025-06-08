import 'package:kph_website/core/common/app_assets.dart';
import 'package:kph_website/core/common/app_svgs.dart';
import 'package:kph_website/data/models/my_project_model.dart';
import 'package:kph_website/data/models/my_skill_model.dart';
import 'package:kph_website/data/models/my_tech.dart';

class MyProjectRepo {
  static List<MyProjectModel> myProjectsData = [
    MyProjectModel(
      name: "Phluid Worldwide (Helpy and Hire Helpy)",
      overview:
          """Phluid Helpy matches domestic helpers to employers, providing a seamless process to get transparent, safe, and competitive job placements. We utilise our proprietary AI matching algorithm to match you with your ideal employer.
Phluid Helpy is also a vibrant community for you to engage with others, ask questions and share your thoughts!""",
      highlight: [
        "Develop and maintain features",
      ],
      metas: [
        MyProjectMeta(
            name: "Phluid Helpy Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.phluid.dh.mobile&hl=en"),
        MyProjectMeta(
            name: "Phluid Hire Helpy Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.phluid.dh.employer"),
        MyProjectMeta(
            name: "Phluid Helpy App Store Link",
            data: "https://apps.apple.com/sg/app/phluid-helpy/id6461165550"),
        MyProjectMeta(
            name: "Phluid Hire Helpy App Store Link",
            data:
                "https://apps.apple.com/us/app/phluid-hire-helpy/id6459793048"),
      ],
      onlineImages: [
        "https://play-lh.googleusercontent.com/yvwsQ3NoE1HmHUdVKYjSLA5sK7FU62tYhovhAkxwd6VD-mxaGapzK2ravEkh2piqSt5A=w5120-h2880-rw",
        "https://play-lh.googleusercontent.com/vv97fmuWJFssEYVD9QdQkAznLGRk7OfANfF69YOlL9Ggz1i1zdYfys-aQzime4jhGfK5=w1052-h592-rw",
      ],
    ),
    MyProjectModel(
      name: "Fary Taxi Application",
      overview:
          "Developed a cutting-edge online taxi booking application, providing seamless transportation services for users.",
      highlight: [
        "Led a team of mobile developers, overseeing task delegation and project execution.",
        "Designed and deployed the application to app stores, achieving over 100,000 active users.",
        "Engineered an in-house map service for real-time route calculations, eliminating reliance on costly third-party services.",
      ],
      metas: [
        MyProjectMeta(
            name: "User Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.xsphere.fary_taxi_enduser"),
        MyProjectMeta(
            name: "User App Store Link",
            data:
                "https://apps.apple.com/mm/app/fary-ready-to-deliver/id1669442797"),
        MyProjectMeta(
            name: "Driver Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.xsphere.fary_taxi_driver"),
        MyProjectMeta(
            name: "Driver App Store Link",
            data: "https://apps.apple.com/mm/app/fary-driver/id1671354074"),
      ],
      onlineImages: [
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/30/23/d3/3023d3aa-3ad3-7e15-3f1b-079892b03acc/2c701970-e822-4cd3-8eeb-3d9b343b85fc_Group_476.png/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource211/v4/2a/8e/15/2a8e15fe-816c-7856-9ade-f605a0a3c785/60dd4c99-43f6-4baf-bcad-af3d892f9a1b_Untitled18_20240702180943.jpg/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/47/4a/b8/474ab89f-653d-f738-de88-7637f845de1f/f3cfdbd1-6d6e-4e0e-9ae1-d3303fde0706_2.jpg/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource116/v4/01/74/1d/01741d1e-b448-1950-b6f8-e66f559003b7/f9a854a8-a5fa-4489-a8d4-c979b88a2196_3.jpg/460x0w.webp",
      ],
    ),
    MyProjectModel(
      name: "L2E Myanmar Mobile Learning Platform",
      overview:
          "Created an innovative mobile learning platform connecting students with top educators in Myanmar.",
      highlight: [
        "Delivered a secure, user-friendly application with features tailored for seamless video learning.",
        "Overcame technical challenges to ensure secure video playback and prevent unauthorized downloads.",
        "Successfully deployed the app, now serving 800+ students.",
      ],
      metas: [
        MyProjectMeta(
            name: "User Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.xsphere.e_learning"),
        MyProjectMeta(
            name: "User App Store Link",
            data: "https://apps.apple.com/mm/app/l2e-myanmar/id1626038880"),
      ],
      onlineImages: [
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/ff/5c/f5/ff5cf5ff-9c44-8eb7-1668-b1f6a3266ec3/bd92e97d-0964-467c-9e44-ec991b9c87e6_Simulator_Screen_Shot_-_iPhone_11_Pro_Max_-_2022-11-10_at_14.07.03.png/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/af/e5/36/afe536e7-06ae-9265-82c8-8ad19aa25706/3044109e-196f-4709-86e8-5679156ad8f4_Simulator_Screen_Shot_-_iPhone_11_Pro_Max_-_2022-11-10_at_14.07.22.png/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/83/7f/7c/837f7cbd-68a3-6d79-e700-1b7db889acbb/047fb19d-2472-46f9-b947-cc8441e28dde_Simulator_Screen_Shot_-_iPhone_11_Pro_Max_-_2022-11-10_at_14.07.15.png/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource112/v4/93/b8/1d/93b81d28-2d30-6f45-1264-4659da57aa20/71b3491f-2a69-4ca2-83d2-f77eae664c42_Simulator_Screen_Shot_-_iPhone_11_Pro_Max_-_2022-11-10_at_14.10.03.png/460x0w.webp"
      ],
    ),
    MyProjectModel(
      name: "QQ Studio Applications",
      overview:
          "Developed a suite of applications to streamline retail operations for a fashion shop in Yangon.",
      highlight: [
        "Built a mobile shopping app for customers, enhancing the remote purchasing experience.",
        "Developed PC-based cashier and admin apps to manage inventory, sales, and operations.",
        "Improved operational efficiency and customer satisfaction.",
      ],
      metas: [],
      onlineImages: [],
    ),
    MyProjectModel(
      name: "Xsphere Internal Application",
      overview:
          "Digitalized HR processes and enhanced employee activity tracking through a dedicated app.",
      highlight: [
        "Developed a mobile app with features like check-in/check-out, leave requests, and file reporting.",
        "Created a QR generator app to simplify employee attendance.",
        "Improved HR efficiency and record-keeping accuracy.",
      ],
      metas: [],
      onlineImages: [],
    ),
    MyProjectModel(
      name: "The Beast Gym App",
      overview:
          "Built a mobile application to enhance gym users' experiences and streamline their interactions with gym facilities.",
      highlight: [
        "Enabled trainer bookings and package purchases directly through the app.",
        "Implemented check-in/check-out features to track user attendance.",
        "Boosted user engagement and streamlined gym management processes.",
      ],
      metas: [
        MyProjectMeta(
            name: "User Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.xsphere.the_beast_gym_end_user"),
        MyProjectMeta(
            name: "User App Store Link",
            data: "https://apps.apple.com/mm/app/the-beast/id6470431862"),
      ],
      onlineImages: [
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/b8/81/ca/b881ca47-8797-40b5-c523-848707ee6cb4/5a8205e9-dc2a-4910-a5dd-63addaf899fa_01.jpg/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/c0/21/e4/c021e432-2480-b10c-bd06-51216f2f8b2e/a906607a-5a31-4044-ab7d-e058fe7dcc19_02.jpg/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource126/v4/5b/d5/85/5bd5859a-e1a3-b390-a9dd-7d8cc32540ea/dd7d6da5-4a91-4e08-a5ef-97a880e5914f_03.jpg/460x0w.webp"
      ],
    ),
    MyProjectModel(
      name: "Sanpya Express - eCommerce Platform",
      overview:
          "Created a comprehensive eCommerce system with integrated apps for online and in-store shopping.",
      highlight: [
        "Developed distinct apps for users, sales staff, and cashiers, ensuring smooth transactions and inventory management.",
        "Designed an admin panel for streamlined system oversight.",
        "Improved customer accessibility and operational efficiency.",
      ],
      metas: [
        MyProjectMeta(
            name: "User Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.xsphere.sanpya_express_user"),
        MyProjectMeta(
            name: "User App Store Link",
            data: "https://apps.apple.com/mm/app/san-pya/id6479732045"),
      ],
      onlineImages: [
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource221/v4/45/8e/69/458e698f-e8ed-a897-c5c8-6dfe99d16c67/326090c9-0148-4090-a5ba-098111ce9ec7_Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2024-04-10_at_10.55.55.png/460x0w.webp",
        "https://is1-ssl.mzstatic.com/image/thumb/PurpleSource211/v4/6d/cd/c5/6dcdc540-0449-499f-796e-a499d6f84aed/21811444-263d-49af-a66a-f2a30827766c_Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2024-04-10_at_10.55.52.png/460x0w.webp",
      ],
    ),
    MyProjectModel(
      name: "Car Crash List",
      overview:
          "Created a mobile application to track and list car crashes, providing users with up-to-date and organized incident data.",
      highlight: [
        "Developed an intuitive interface for users to browse and update crash records.",
        "Ensured fast and reliable data access through optimized backend processes.",
        "Deployed the app to the Play Store, making it accessible for a wider audience.",
      ],
      metas: [
        MyProjectMeta(
            name: "User Play Store Link",
            data:
                "https://play.google.com/store/apps/details?id=com.kphkph.car_crash_list"),
      ],
      onlineImages: [
        // "https://play-lh.googleusercontent.com/3qYFUKdG-6jYPuS9g6KmsO1tsZdPVhUkro6C2pFYRk_WsUC6DJQDnJBzSPFCYCUDVA=w1052-h592-rw",
        // "https://play-lh.googleusercontent.com/b62h5_dESmp0HeRF184CDw3odCstDvXFWWe1yJ8zUdsjUEK1Z3t2HBPx_QC5L-wgTggB=w1052-h592-rw"
      ],
    ),
  ];
}
