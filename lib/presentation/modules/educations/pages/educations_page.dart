import 'package:flutter/material.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';

class EducationsPage extends StatelessWidget {
  const EducationsPage({super.key});

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
                    "My Education Path",
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeXXL,
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).textTheme.headlineLarge!.color),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  Text(
                    "University of Computer Studies, Yangon (UCSY), Myanmar",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeL,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).hintColor),
                  ),
                  Text(
                    "Bachelor's degree in Computer Science (B.C.Sc)",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeM,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  Text(
                    "2013-2019",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeM,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  Text(
                    "University of Sunderland, United Kingdom",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeL,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).hintColor),
                  ),
                  Text(
                    "BSc (Hons) in Computer Science",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeM,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                  Text(
                    "Graduated in 2025 (First Class Honours)",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeM,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.bodyLarge!.color),
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
