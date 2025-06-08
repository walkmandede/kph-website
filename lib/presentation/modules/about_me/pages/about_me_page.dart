import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kph_website/core/common/app_assets.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_enums.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';
import 'package:kph_website/presentation/modules/home/bloc/home_page_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = context.read<HomePageBloc>();

    const aboutMeText = """I am a Flutter developer 
with over 4 years of experience in Flutter 
and nearly 6 years in software development. 
I enjoy building apps that solve real problems 
and love seeing people use what I create. 
I also have an interest in machine learning 
and like playing mobile games in my free time.""";

    return SizedBox(
      width: double.infinity,
      height: (MediaQuery.sizeOf(context).height *
          (1 - homeBloc.state.homeHeaderBaseHeightFactor)),
      child: MyResponsiveBuilder(
        horizontalBuilder: (xHorizontal) {
          return LayoutBuilder(
            builder: (a1, c1) {
              return SizedBox.expand(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.basePaddingFactor
                        .ofScreenWidth(context: context),
                    vertical: AppConstants.basePaddingFactor
                        .ofScreenHeight(context: context),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "Kyaw",
                                  style: AppConstants.getFont1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppConstants.baseFontSizeXXXL,
                                      color: Theme.of(context).primaryColor),
                                  children: [
                                    TextSpan(
                                        text: " Phyoe Han",
                                        style: AppConstants.getFont1.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                AppConstants.baseFontSizeXXXL,
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .color)),
                                    TextSpan(
                                        text:
                                            "\nFlutter Developer And Software Engineer",
                                        style: AppConstants.getFont1.copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontSize:
                                                AppConstants.baseFontSizeXXL,
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .color)),
                                  ]),
                            ),
                            (c1.maxHeight * 0.05).heightBox(),
                            Flexible(
                              child: FittedBox(
                                child: Text(
                                  aboutMeText,
                                  style: AppConstants.getFont1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppConstants.baseFontSizeXL,
                                      color: Theme.of(context).hintColor),
                                ),
                                // child: Text(
                                //     aboutMeText,
                                //     style: AppConstants.getFont1.copyWith(
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: AppConstants.baseFontSizeXL,
                                //         color: Theme.of(context).hintColor
                                //     )
                                // ),
                              ),
                            ),
                            (c1.maxHeight * 0.05).heightBox(),
                            Text(
                              "Find me on",
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeL,
                                  color: Theme.of(context).disabledColor),
                            ),
                            (c1.maxHeight * 0.015).heightBox(),
                            SizedBox(
                              width: xHorizontal
                                  ? c1.maxWidth * 0.15
                                  : c1.maxWidth * 0.35,
                              child: Row(
                                spacing: c1.maxWidth * 0.015,
                                children: [
                                  ...EnumSocialApps.values.map(
                                    (each) {
                                      return Expanded(
                                        child: FittedBox(
                                          child: InkWell(
                                            onTap: () {
                                              try {
                                                launchUrl(Uri.parse(each.link));
                                              } catch (_) {}
                                            },
                                            child: SvgPicture.string(
                                              each.svgString,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      AppConstants.basePaddingFactorS
                          .ofScreenWidth(context: context)
                          .widthBox(),
                      Expanded(
                        flex: 3,
                        child: LayoutBuilder(
                          builder: (a2, c2) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset(
                                  AppAssets.myAvatar,
                                  width: c1.maxWidth * 0.7,
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        verticalBuilder: (xVertical) {
          return LayoutBuilder(
            builder: (a1, c1) {
              return SizedBox.expand(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppConstants.basePaddingFactor
                        .ofScreenWidth(context: context),
                    vertical: AppConstants.basePaddingFactor
                        .ofScreenHeight(context: context),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: c1.maxWidth * 0.05),
                            child: RichText(
                              text: TextSpan(
                                  text: "Hello, ",
                                  style: AppConstants.getFont1.copyWith(
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .color,
                                      fontWeight: FontWeight.bold),
                                  children: [
                                    TextSpan(
                                        text: "I'm ",
                                        style: AppConstants.getFont1.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold)),
                                    TextSpan(
                                        text: "Kyaw Phyoe Han",
                                        style: AppConstants.getFont1.copyWith(
                                            color: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .color,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: FittedBox(
                          child: Text(
                            "Flutter Developer And Software Engineer",
                            style: AppConstants.getFont1
                                .copyWith(color: Theme.of(context).hintColor),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: LayoutBuilder(
                          builder: (a2, c2) {
                            return Image.asset(
                              AppAssets.myAvatar,
                              width: c2.maxHeight * 1,
                            );
                          },
                        ),
                      ),
                      (c1.maxHeight * 0.025).heightBox(),
                      Expanded(
                        flex: 5,
                        child: FittedBox(
                            alignment: Alignment.center,
                            child: Text(
                              aboutMeText,
                              style: AppConstants.getFont1.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppConstants.baseFontSizeXXL,
                                  color: Theme.of(context).hintColor),
                            )),
                      ),
                      (c1.maxHeight * 0.025).heightBox(),
                      Expanded(
                        flex: 2,
                        child: SizedBox(
                          width: c1.maxWidth * 0.35,
                          child: Column(
                            children: [
                              Text(
                                "Find me on",
                                style: AppConstants.getFont1.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: Theme.of(context).disabledColor,
                                    fontSize: AppConstants.baseFontSizeS),
                              ),
                              Expanded(
                                child: Row(
                                  spacing: c1.maxWidth * 0.015,
                                  children: [
                                    ...EnumSocialApps.values.map(
                                      (each) {
                                        return Expanded(
                                          child: FittedBox(
                                            child: InkWell(
                                              onTap: () {
                                                try {
                                                  launchUrl(
                                                      Uri.parse(each.link));
                                                } catch (_) {}
                                              },
                                              child: SvgPicture.string(
                                                each.svgString,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
