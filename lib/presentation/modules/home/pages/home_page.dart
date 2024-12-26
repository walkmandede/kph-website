import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kph_website/core/common/app_assets.dart';
import 'package:kph_website/core/common/app_enums.dart';
import 'package:kph_website/core/common/app_extensions.dart';
import 'package:kph_website/core/common/app_functions.dart';
import 'package:kph_website/presentation/_common_widgets/my_responsive_builder.dart';
import 'package:kph_website/presentation/modules/home/bloc/home_page_bloc.dart';
import 'package:kph_website/presentation/modules/home/pages/top_header_bar_widget.dart';
import 'package:scroll_to_index/scroll_to_index.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageBloc = context.read<HomePageBloc>();
    return Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              alignment: Alignment.center,
              children: [
                //bg
                SizedBox.expand(
                  child: MyResponsiveBuilder(
                    horizontalBuilder: (xHorizontal) {
                      return DecoratedBox(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                // image: Image.network("https://img.freepik.com/free-vector/abstract-hexagonal-black-design_1017-30883.jpg?t=st=1735186851~exp=1735190451~hmac=876f3c3e2180e5b7493a9e6faf3ca69fc68a9dce34c551b7f6a7a5838316a676&w=1380").image,
                                image: Image.asset(xDarkThemeNow(context: context)?AppAssets.bg1:AppAssets.bgWhite1).image,
                                // colorFilter: xDarkThemeNow(context: context)?null:ColorFilter.mode(Theme.of(context).scaffoldBackgroundColor.withValues(alpha: 0.3), BlendMode.srcIn),
                                fit: xHorizontal?BoxFit.cover:BoxFit.cover
                            )
                        ),
                      );
                    },
                  ),
                ),
                //glassy
                if(!xDarkThemeNow(context: context))BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: SizedBox.expand(
                    child: ColoredBox(
                      color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.4),
                    ),
                  ),
                ),
                //scroll
                CustomScrollView(
                  controller: homePageBloc.scrollController,
                  key: PageStorageKey("myHomeScrollPageKey"),
                  slivers: <Widget>[
                    SliverAppBar(
                      pinned: false,
                      snap: true,
                      floating: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      expandedHeight: homePageBloc.state.homeHeaderBaseHeightFactor.ofScreenHeight(context: context),
                      collapsedHeight: homePageBloc.state.homeHeaderBaseHeightFactor.ofScreenHeight(context: context),
                      flexibleSpace: TopHeaderBarWidget(),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
                        final currentTab = EnumHomePageTabs.values[index];
                        return AutoScrollTag(
                          index: index,
                          controller: homePageBloc.scrollController,
                          key: ValueKey(index),
                          child: currentTab.widget,
                        );
                        },
                      childCount: EnumHomePageTabs.values.length,
                      ),
                    ),
                  ]
                ),
              ],
            )
          );
        },
    );
  }
}
