import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_restaurant/page/happy_deal_page/happy_deal_page.dart';
import 'package:reservation_restaurant/page/home_page/home_page.dart';
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
                fontFamily: 'Montserrat',
                colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.deepPurple,
                    background: ColorManagement.backgroundColor,
                 )),

            home: HomePage(),
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
