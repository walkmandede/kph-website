import 'package:flutter/material.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/data/repositories/my_projects_repo.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

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
                    "My Projects",
                    style: AppConstants.getFont1.copyWith(
                        fontSize: AppConstants.baseFontSizeXXL,
                        fontWeight: FontWeight.bold,
                        color:
                            Theme.of(context).textTheme.headlineLarge!.color),
                  ),
                  AppConstants.basePaddingFactorS
                      .ofScreenHeight(context: context)
                      .heightBox(),
                  ...MyProjectRepo.myProjectsData.map(
                    (each) {
                      return SizedBox(
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
                              spacing: 10,
                              children: [
                                Text(
                                  each.name,
                                  textAlign: xHorizontal
                                      ? TextAlign.start
                                      : TextAlign.center,
                                  style: AppConstants.getFont1.copyWith(
                                      fontSize: AppConstants.baseFontSizeXL,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  each.overview,
                                  textAlign: xHorizontal
                                      ? TextAlign.start
                                      : TextAlign.center,
                                  style: AppConstants.getFont1.copyWith(
                                      fontSize: AppConstants.baseFontSizeL,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).hintColor),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "• ${each.highlight.join("\n\n• ")}",
                                  textAlign: xHorizontal
                                      ? TextAlign.start
                                      : TextAlign.center,
                                  style: AppConstants.getFont1.copyWith(
                                      fontSize: AppConstants.baseFontSizeM,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .textTheme
                                          .headlineMedium!
                                          .color!),
                                ),
                                if (each.onlineImages.isNotEmpty)
                                  AppConstants.basePaddingFactorS
                                      .ofScreenHeight(context: context)
                                      .heightBox(),
                                if (each.onlineImages.isNotEmpty)
                                  SizedBox(
                                    height:
                                        (MediaQuery.sizeOf(context).height) *
                                            0.35,
                                    width: double.infinity,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        spacing: 10,
                                        children: [
                                          ...each.onlineImages.map(
                                            (eachImage) {
                                              return ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppConstants
                                                            .baseBorderRadius),
                                                child: AspectRatio(
                                                  aspectRatio: 9 / 18,
                                                  child: Image.network(
                                                    eachImage,
                                                    fit: BoxFit.cover,
                                                    errorBuilder: (context,
                                                        error, stackTrace) {
                                                      return Center(
                                                        child: Icon(Icons
                                                            .image_not_supported_rounded),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              );
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                if (each.metas.isNotEmpty)
                                  AppConstants.basePaddingFactorS
                                      .ofScreenHeight(context: context)
                                      .heightBox(),
                                if (each.metas.isNotEmpty)
                                  Column(
                                    spacing: 10,
                                    children: [
                                      ...each.metas.map(
                                        (eachMeta) {
                                          return TextField(
                                            controller: TextEditingController(
                                                text: eachMeta.data),
                                            readOnly: true,
                                            style: AppConstants.getFont1
                                                .copyWith(
                                                    fontSize: AppConstants
                                                        .baseFontSizeM,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary),
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                enabledBorder: InputBorder.none,
                                                labelText: eachMeta.name,
                                                prefixIcon: IconButton(
                                                    onPressed: () {
                                                      try {
                                                        launchUrl(Uri.parse(
                                                            eachMeta.data));
                                                      } catch (_) {}
                                                    },
                                                    icon: Icon(
                                                      Icons.open_in_new_rounded,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary,
                                                    )),
                                                labelStyle: AppConstants
                                                    .getFont1
                                                    .copyWith(
                                                        fontSize: AppConstants
                                                            .baseFontSizeM,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Theme.of(context)
                                                            .hintColor)),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                AppConstants.basePaddingFactorS
                                    .ofScreenHeight(context: context)
                                    .heightBox(),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              );
            },
          )),
    );
  }
}
