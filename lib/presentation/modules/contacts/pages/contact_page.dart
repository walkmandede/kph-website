import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_enums.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/data/repositories/my_skill_repo.dart';
import 'package:kph_website/data/repositories/my_tech_repo.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

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
                    "Contact Me",
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeXXL,
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).textTheme.headlineLarge!.color),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  ...[
                    ["Phone", "(+66) 0627052637"],
                    ["Email", "walkmandede@gmail.com"],
                    ["Address", "Bangkok, Thailand"],
                  ].map(
                    (e) {
                      return Column(
                        crossAxisAlignment: xHorizontal
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                        children: [
                          TextField(
                            readOnly: true,
                            controller: TextEditingController(text: e.last),
                            textAlign: TextAlign.start,
                            style: AppConstants.getFont1.copyWith(
                                fontSize: AppConstants.baseFontSizeM,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                label: Text(
                                  e.first,
                                  textAlign: TextAlign.start,
                                  style: AppConstants.getFont1.copyWith(
                                      fontSize: AppConstants.baseFontSizeL,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).hintColor),
                                )),
                          ),
                          AppConstants.basePaddingFactorS
                              .ofScreenHeight(context: context)
                              .heightBox(),
                        ],
                      );
                    },
                  ),
                  Text(
                    "Socials",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeL,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).hintColor),
                  ),
                  10.heightBox(),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width *
                        (xHorizontal ? 0.2 : 0.5),
                    child: Row(
                      spacing: AppConstants.basePaddingFactorS
                          .ofScreenWidth(context: context),
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
                  ),
                  30.heightBox(),
                  Text(
                    "Last Updated At - 9 Jun, 2025 02:30",
                    textAlign: xHorizontal ? TextAlign.start : TextAlign.center,
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeS,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).hintColor),
                  ),
                  10.heightBox(),
                ],
              );
            },
          )),
    );
  }
}
