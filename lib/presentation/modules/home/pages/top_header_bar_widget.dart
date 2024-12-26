import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kph_website/core/common/app_constants.dart';
import 'package:kph_website/core/common/app_enums.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';
import 'package:kph_website/presentation/modules/theme/widgets/theme_change_button.dart';

import '../bloc/home_page_bloc.dart';

class TopHeaderBarWidget extends StatelessWidget {
  const TopHeaderBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageBloc = context.read<HomePageBloc>();
    return ClipRect(
      child: SizedBox(
        width: double.infinity,
        height: (homePageBloc.state.homeHeaderBaseHeightFactor).ofScreenHeight(context: context),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.6),
              border: Border(
                bottom: BorderSide(
                    color: Theme.of(context).secondaryHeaderColor.withValues(alpha: 0.2),
                    width: 0.8
                )
              )
            ),
            child: MyResponsiveBuilder(
              horizontalBuilder: (xHorizontal) {
                return LayoutBuilder(
                  builder: (a1, c1) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (AppConstants.basePaddingFactor).ofScreenWidth(context: context)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ...EnumHomePageTabs.values.map((each) {
                            return BlocSelector<HomePageBloc,HomePageState,EnumHomePageTabs>(
                              selector: (state) => state.currentSelectedTab,
                              builder: (context, currentSelectedTab) {
                                final xSelected = currentSelectedTab == each;
                                return Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        homePageBloc.add(HomePageOnClickTabEvent(enumHomePageTabs: each));
                                      },
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: c1.maxWidth * 0.015
                                          )
                                      ),
                                      child: Text(
                                        each.label,
                                        style: AppConstants.getFont1.copyWith(
                                          fontWeight: FontWeight.w800,
                                          color: xSelected
                                              ?Theme.of(context).textTheme.headlineLarge!.color
                                              :Theme.of(context).disabledColor,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Transform.translate(
                                        offset: Offset(0, c1.maxHeight * 0.2),
                                        child: Visibility(
                                          visible: xSelected,
                                          child: Icon(
                                            Icons.more_horiz_rounded,
                                            color: Theme.of(context).textTheme.headlineLarge!.color,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          },),
                          const Spacer(),
                          (c1.maxWidth * 0.05).widthBox(),
                          ThemeChangeButton()
                        ],
                      ),
                    );
                  },
                );
              },
              verticalBuilder: (xVertical) {
                return LayoutBuilder(
                  builder: (a1, c1) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: (AppConstants.basePaddingFactor).ofScreenWidth(context: context)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocSelector<HomePageBloc,HomePageState,EnumHomePageTabs>(
                              selector: (state) => state.currentSelectedTab,
                              builder: (context, currentSelectedTab) {
                                return DropdownButton(
                                  value: currentSelectedTab,
                                  underline: SizedBox.shrink(),
                                  onChanged: (value) {
                                    if(value!=null){
                                      homePageBloc.add(HomePageOnClickTabEvent(enumHomePageTabs: value));
                                    }
                                  },
                                  items: [
                                    ...EnumHomePageTabs.values.map((each) {
                                      return DropdownMenuItem(
                                        value: each,
                                        child: Text(
                                          each.label,
                                          style: AppConstants.getFont1.copyWith(
                                            fontSize: AppConstants.baseFontSizeM
                                          ),
                                        ),
                                      );
                                    },).toList()
                                  ],
                                );
                              },
                          ),
                          (c1.maxWidth * 0.05).widthBox(),
                          ThemeChangeButton()
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
