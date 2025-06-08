import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_extensions.dart';

import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';

class ExperiencesPage extends StatelessWidget {
  const ExperiencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal:
              AppConstants.basePaddingFactor.ofScreenWidth(context: context),
          vertical:
              AppConstants.basePaddingFactor.ofScreenHeight(context: context)),
      child: SizedBox(
          width: double.infinity,
          child: MyResponsiveBuilder(
            horizontalBuilder: (xHorizontal) {
              return Column(
                crossAxisAlignment: xHorizontal
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: [
                  Text(
                    "My Experiences",
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeXXL,
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).textTheme.headlineLarge!.color),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.only(
                          bottom: AppConstants.basePaddingFactorS
                              .ofScreenHeight(context: context)),
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withValues(alpha: 0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              AppConstants.baseBorderRadius),
                          side: BorderSide(
                              color: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withValues(alpha: 1),
                              width: 1.5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                          vertical: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                        ),
                        child: Column(
                          crossAxisAlignment: xHorizontal
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Senior Mobile Developer",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeL,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).hintColor),
                            ),
                            Text(
                              "Xsphere - Yangon, Myanmar",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            Text(
                              "Jan 2022 - Sep 2024",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            AppConstants.basePaddingFactorS
                                .ofScreenHeight(context: context)
                                .heightBox(),
                            Text(
                              """• Led a mobile development team of six, delegating and organizing tasks based on project manager directives to ensure smooth workflow and timely project completion.
                        
• Developed mobile applications using Flutter and Dart, including Fary Taxi, which reached over 100,000 active users, and L2E Myanmar, a mobile learning application.
                        
• Reviewed code contributions from team members, maintaining high standards and consistency across the codebase and guiding junior developers to improve code quality.
                        
• Assisted with backend tasks in Node.js and Express for various projects, optimizing data interactions and enhancing app performance.
                        
• Utilized Flutter, Dart, JavaScript, Node.js, Express, Prisma, MongoDB, and PostgreSQL to build and maintain scalable, efficient systems.
                        """,
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeS,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.only(
                          bottom: AppConstants.basePaddingFactorS
                              .ofScreenHeight(context: context)),
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withValues(alpha: 0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              AppConstants.baseBorderRadius),
                          side: BorderSide(
                              color: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withValues(alpha: 1),
                              width: 1.5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                          vertical: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                        ),
                        child: Column(
                          crossAxisAlignment: xHorizontal
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Senior Mobile Developer",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeL,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).hintColor),
                            ),
                            Text(
                              "Xsphere - Yangon, Myanmar",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            Text(
                              "Jan 2022 - Sep 2024",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            AppConstants.basePaddingFactorS
                                .ofScreenHeight(context: context)
                                .heightBox(),
                            Text(
                              """• Led a mobile development team of six, delegating and organizing tasks based on project manager directives to ensure smooth workflow and timely project completion.
                        
• Developed mobile applications using Flutter and Dart, including Fary Taxi, which reached over 100,000 active users, and L2E Myanmar, a mobile learning application.
                        
• Reviewed code contributions from team members, maintaining high standards and consistency across the codebase and guiding junior developers to improve code quality.
                        
• Assisted with backend tasks in Node.js and Express for various projects, optimizing data interactions and enhancing app performance.
                        
• Utilized Flutter, Dart, JavaScript, Node.js, Express, Prisma, MongoDB, and PostgreSQL to build and maintain scalable, efficient systems.
                        """,
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeS,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.only(
                          bottom: AppConstants.basePaddingFactorS
                              .ofScreenHeight(context: context)),
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withValues(alpha: 0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              AppConstants.baseBorderRadius),
                          side: BorderSide(
                              color: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withValues(alpha: 1),
                              width: 1.5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                          vertical: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                        ),
                        child: Column(
                          crossAxisAlignment: xHorizontal
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            Text(
                              "IT Staff",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeL,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).hintColor),
                            ),
                            Text(
                              "Hanthawaddy Links - Yangon, Myanmar",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            Text(
                              "Feb 2020 - Dec 2021",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                            AppConstants.basePaddingFactorS
                                .ofScreenHeight(context: context)
                                .heightBox(),
                            Text(
                              """• Developed and maintained an internal office management application using Flutter and Firebase, supporting efficient handling of company-wide operations and streamlining internal processes.
                    
• Worked closely with internal teams to understand management needs and implement features that enhanced workflow, optimized data management, and improved communication within the organization.
                    
• Regularly updated the application to align with evolving business requirements, ensuring the app remained effective for real-time internal management and resource tracking.
                    """,
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeS,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  SizedBox(
                    width: double.infinity,
                    child: Card(
                      margin: EdgeInsets.only(
                          bottom: AppConstants.basePaddingFactorS
                              .ofScreenHeight(context: context)),
                      color: Theme.of(context)
                          .scaffoldBackgroundColor
                          .withValues(alpha: 0.8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              AppConstants.baseBorderRadius),
                          side: BorderSide(
                              color: Theme.of(context)
                                  .secondaryHeaderColor
                                  .withValues(alpha: 1),
                              width: 1.5)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                          vertical: AppConstants.basePaddingFactorS
                              .ofScreenWidth(context: context),
                        ),
                        child: Column(
                          crossAxisAlignment: xHorizontal
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Software Developer",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeL,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).hintColor),
                            ),
                            Text(
                              "Freelance",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            Text(
                              "Mar 2019 - Present",
                              textAlign: xHorizontal
                                  ? TextAlign.start
                                  : TextAlign.center,
                              style: AppConstants.getFont1.copyWith(
                                  fontSize: AppConstants.baseFontSizeM,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                ],
              );
            },
          )),
    );
  }
}
