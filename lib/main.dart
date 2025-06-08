import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kph_website/presentation/modules/home/bloc/home_page_bloc.dart';
import 'package:kph_website/presentation/modules/theme/bloc/theme_cubit.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'core/common/app_theme.dart';
import 'core/routes/route_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => HomePageBloc(
              buildContext: context,
              scrollController: AutoScrollController(
                axis: Axis.vertical,
              )),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            key: GlobalKey(),
            routes: RouteUtils().routes,
            debugShowCheckedModeBanner: false,
            title: "KPH's website",
            locale: const Locale('en', 'EN'),
            theme: AppTheme.lightTheme, // Use the light theme
            darkTheme: AppTheme.darkTheme, // Use the dark theme
            themeMode: state.themeMode,
          );
        },
      ),
    );
  }
}

class GatewayPage extends StatefulWidget {
  const GatewayPage({super.key});

  @override
  State<GatewayPage> createState() => _GatewayPageState();
}

class _GatewayPageState extends State<GatewayPage> {
  @override
  void initState() {
    initLoad();
    super.initState();
  }

  initLoad() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        RouteUtils.homePage,
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
