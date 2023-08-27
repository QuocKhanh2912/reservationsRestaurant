import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_restaurant/page/authentication/forgot_password_page/success_change_password_page.dart';
import 'package:reservation_restaurant/page/authentication/logged_in_page.dart';
import 'package:reservation_restaurant/page/authentication/login_page.dart';
import 'package:reservation_restaurant/page/home_page/home_page.dart';
import 'package:reservation_restaurant/page/onboarding/onboading_page.dart';
import 'package:reservation_restaurant/page/profile_page/profile_page.dart';
import 'package:reservation_restaurant/page/reservartion_page/reservation_page.dart';
import 'package:reservation_restaurant/page/utils/color_management.dart';
import 'package:reservation_restaurant/routes/routes_management.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'bloc/bloc/check_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckBloc(),
      child: BlocBuilder<CheckBloc, CheckState>(
        builder: (context, state) {

          return MaterialApp(
            theme: ThemeData(
                useMaterial3: true,
                fontFamily: 'Montserrat',),

            home: const HomePage(),
            // (state is AlReadyOnBoarding)?HomePage():OnBoardingPage(),
            // routes: {
            //   'on_boarding_page': (context) => const OnBoardingPage(),
            //   'home_page': (context) => const HomePage(),
            // }
            onGenerateRoute: (settings) =>
                RouteManager.routeManagement(settings),
          );
        },
      ),
    );
  }
}
