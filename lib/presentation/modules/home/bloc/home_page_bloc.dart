import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:kph_website/core/common/app_enums.dart';
import 'package:kph_website/core/common/app_functions.dart';
import 'package:meta/meta.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState>{

  final BuildContext buildContext;
  final AutoScrollController scrollController;

  initLoad(){
    scrollController.addListener(() {
      final indices = SplayTreeMap.from(scrollController.tagMap).keys;
      int index = 0;
      if(indices.length<3){
        index = indices.first;
      }
      else{
        index = indices.toList()[1];
      }
      add(HomePageOnUpdateScrollEvent(enumHomePageTabs: EnumHomePageTabs.values[index]));
    },);
  }

  HomePageBloc({
    required this.buildContext,
    required this.scrollController
  }) : super(HomePageState.init()) {
    
    initLoad();
    
    on<HomePageEvent>((event, emit) {
      // TODO: implement event handler


      if(event is HomePageOnClickTabEvent){
        final index = EnumHomePageTabs.values.indexOf(event.enumHomePageTabs);

        if(index==0){
          scrollController.animateTo(0, duration: const Duration(milliseconds: 250), curve: Curves.linear);
        }
        else{
          scrollController.scrollToIndex(index,preferPosition: AutoScrollPosition.begin);
        }
      }
      else if(event is HomePageOnUpdateScrollEvent){
        emit(state.copyWith(currentSelectedTab: event.enumHomePageTabs));
      }

    });
  }
  

  
  
}
