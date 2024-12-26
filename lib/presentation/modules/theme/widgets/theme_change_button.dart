import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kph_website/presentation/modules/theme/bloc/theme_cubit.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeCubit>();
    return BlocSelector<ThemeCubit,ThemeState,ThemeMode>(
      selector: (state) => state.themeMode,
      builder: (context, themeMode) {
        IconData iconData = Icons.light_mode_rounded;

        switch(themeMode){
          case ThemeMode.system:
            iconData = Icons.laptop_rounded;
            break;
          case ThemeMode.light:
            iconData = Icons.light_mode_rounded;
            break;
          case ThemeMode.dark:
            iconData = Icons.dark_mode_rounded;
            break;
        }

        return IconButton(
            onPressed: () {
              themeBloc.toggleTheme();
            },
            icon: Icon(
              iconData,
              color: Theme.of(context).primaryColor,
            )
        );
      },
    );
  }
}
