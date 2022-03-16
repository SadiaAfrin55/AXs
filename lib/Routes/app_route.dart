
import 'package:flutter/material.dart';

import '../Bloc/Home/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Constants/Strings/app_string.dart';
import '../Presentation/Home/home_page.dart';


class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final Map? args = settings.arguments as Map?;
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case HOME_PAGE:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: HomeScreen(),
            ));

      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => UserCubit(),
              child: Container(),
            ));
    }
  }
}