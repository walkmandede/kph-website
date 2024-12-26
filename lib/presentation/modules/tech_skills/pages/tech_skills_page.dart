import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/data/repositories/my_skill_repo.dart';
import 'package:kph_website/data/repositories/my_tech_repo.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';

class TechSkillsPage extends StatelessWidget {
  const TechSkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.basePaddingFactor.ofScreenWidth(context: context),
        vertical: AppConstants.basePaddingFactor.ofScreenHeight(context: context)
      ),
      child: SizedBox(
        width: double.infinity,
        child: LayoutBuilder(
          builder: (a1,c1) {
            return MyResponsiveBuilder(
              horizontalBuilder: (xHorizontal) {
                return Column(
                  crossAxisAlignment: xHorizontal?CrossAxisAlignment.start:CrossAxisAlignment.center,
                  children: [
                    Text(
                      "What I Do",
                      style: AppConstants.getFont1.copyWith(
                          fontSize: AppConstants.baseFontSizeXXL,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headlineLarge!.color
                      ),
                    ),
                    AppConstants.basePaddingFactorS.ofScreenHeight(context: context).heightBox(),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: xHorizontal?3:1,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: xHorizontal?16/7:2
                      ),
                      itemCount: MySkillRepo.mySkillsData.length,
                      itemBuilder: (context, index) {
                        final each = MySkillRepo.mySkillsData[index];
                        return LayoutBuilder(
                          key: ValueKey(index),
                          builder: (a1, c1) {
                            return Card(
                              margin: EdgeInsets.zero,
                              color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.6),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Theme.of(context).secondaryHeaderColor.withValues(alpha: 0.9),
                                  width: 0.8
                                ),
                                borderRadius: BorderRadius.circular(AppConstants.baseBorderRadius)
                              ),
                              child: ClipRect(
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: c1.maxWidth * 0.05,
                                          vertical: c1.maxHeight * 0.05
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: xHorizontal?3:2,
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  min(c1.maxHeight, c1.maxWidth) * 0.05
                                              ),
                                              child: FittedBox(
                                                child: SvgPicture.string(
                                                  each.svgData,
                                                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: xHorizontal?2:1,
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  min(c1.maxHeight, c1.maxWidth) * 0.05
                                              ),
                                              child: FittedBox(
                                                child: Text(
                                                  each.name,
                                                  style: AppConstants.getFont1.copyWith(
                                                      color: Theme.of(context).colorScheme.secondary,
                                                      fontWeight: FontWeight.w800
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: xHorizontal?3:2,
                                            child: Center(
                                              child: FittedBox(
                                                child: Text(
                                                  each.description,
                                                  style: AppConstants.getFont1.copyWith(
                                                      color: Theme.of(context).hintColor
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  maxLines: 3,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    AppConstants.basePaddingFactor.ofScreenHeight(context: context).heightBox(),
                    Text(
                      "How I Do",
                      style: AppConstants.getFont1.copyWith(
                          fontSize: AppConstants.baseFontSizeXXL,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.headlineLarge!.color
                      ),
                    ),
                    AppConstants.basePaddingFactorS.ofScreenHeight(context: context).heightBox(),
                    Column(
                      children: [
                        ...MyTechRepo.myTechData.map((each) {
                          final nameWidget = Text(
                            each.name,
                            style: AppConstants.getFont1.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                                fontSize: AppConstants.baseFontSizeXL
                            ),
                          );
                          final iconWidget = SvgPicture.string(
                            each.svgData,
                            width: c1.maxWidth * 0.035,
                            height: c1.maxWidth * 0.035,
                            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.secondary, BlendMode.srcIn),
                          );
                          return Column(
                            crossAxisAlignment: xHorizontal?CrossAxisAlignment.start:CrossAxisAlignment.center,
                            spacing: 10,
                            children: [
                              Row(
                                mainAxisAlignment: xHorizontal?MainAxisAlignment.start:MainAxisAlignment.center,
                                children: [
                                  iconWidget,
                                  (c1.maxWidth * 0.015).widthBox(),
                                  nameWidget,
                                ],
                              ),
                              ...each.skills.map((eachSkill) {
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  title: Column(
                                    crossAxisAlignment: xHorizontal?CrossAxisAlignment.start:CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        eachSkill.title,
                                        textAlign: xHorizontal?TextAlign.start:TextAlign.center,
                                        style: AppConstants.getFont1.copyWith(
                                            color: Theme.of(context).hintColor,
                                            fontSize: AppConstants.baseFontSizeM,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      Text(
                                        eachSkill.skills.join(" • "),
                                        textAlign: xHorizontal?TextAlign.start:TextAlign.center,
                                        style: AppConstants.getFont1.copyWith(
                                            color: Theme.of(context).textTheme.displayLarge!.color,
                                            fontSize: AppConstants.baseFontSizeM
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              },),
                              (20).heightBox(),
                            ],
                          );
                        },)
                      ],
                    ),
                  ],
                );
              },
            );
          }
        )
      ),
    );
  }
}
