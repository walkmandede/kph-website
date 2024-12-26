import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:kph_website/core/common/app_functions.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.init());

  void updateTheme({required ThemeMode themeMode}){
    emit(ThemeState(themeMode: themeMode));
  }

  void toggleTheme(){
    if(state.themeMode == ThemeMode.light){
      emit(ThemeState(themeMode: ThemeMode.dark));
    }
    else if(state.themeMode == ThemeMode.dark){
      emit(ThemeState(themeMode: ThemeMode.system));
    }
    else if(state.themeMode == ThemeMode.system){
      emit(ThemeState(themeMode: ThemeMode.light));
    }
  }

}
