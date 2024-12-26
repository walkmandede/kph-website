part of 'home_page_bloc.dart';

class HomePageState{

  double homeHeaderBaseHeightFactor;
  EnumHomePageTabs currentSelectedTab;

  HomePageState({
    required this.homeHeaderBaseHeightFactor,
    required this.currentSelectedTab,
  });


  factory HomePageState.init(){
    return HomePageState(
      homeHeaderBaseHeightFactor: 0.1,
      currentSelectedTab: EnumHomePageTabs.aboutMe
    );
  }

  HomePageState copyWith(
  {
    double? homeHeaderBaseHeightFactor,
    EnumHomePageTabs? currentSelectedTab,
  }){
    return HomePageState(
      homeHeaderBaseHeightFactor: homeHeaderBaseHeightFactor??this.homeHeaderBaseHeightFactor,
      currentSelectedTab: currentSelectedTab??this.currentSelectedTab
    );
  }

}
