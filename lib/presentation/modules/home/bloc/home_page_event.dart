part of 'home_page_bloc.dart';

@immutable
sealed class HomePageEvent {}

class HomePageOnClickTabEvent extends HomePageEvent{
  final EnumHomePageTabs enumHomePageTabs;

  HomePageOnClickTabEvent({
    required this.enumHomePageTabs
  });

}

class HomePageOnUpdateScrollEvent extends HomePageEvent{
  final EnumHomePageTabs enumHomePageTabs;

  HomePageOnUpdateScrollEvent({
    required this.enumHomePageTabs
  });

}
