import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_restaurant/page/bloc/check_bloc.dart';
import 'package:reservation_restaurant/page/home_page.dart';
import 'package:reservation_restaurant/page/onboarding/onboading_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferences.getInstance();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CheckBloc(),
      child: BlocBuilder<CheckBloc, CheckState>(
        builder: (context, state) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                useMaterial3: true,
              ),
              home: (state is AlReadyOnBoarding)?HomePage():OnBoardingPage(),
              routes: {
                'on_boarding_page': (context) => const OnBoardingPage(),
                'home_page': (context) => const HomePage(),
              });
        },
      ),
    );
  }
}