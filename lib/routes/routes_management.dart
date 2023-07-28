import 'package:flutter/material.dart';
import 'package:reservation_restaurant/routes/route_named.dart';

import '../page/best_seller_page/best_seller_page.dart';
import '../page/happy_deal_page/happy_deal_page.dart';
import '../page/home_page/home_page.dart';
import '../page/not_found_page/not_found_page.dart';
import '../page/onboarding/onboading_page.dart';



class RouteManager {
  static Route routeManagement(RouteSettings settings) {
    switch (settings.name) {
      case RouteNamed.homePage:
        {
          return MaterialPageRoute(builder: (context) => const HomePage(),);
        }
      case RouteNamed.onBoardingPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OnBoardingPage(),);
        }
      case RouteNamed.bestSellerPage:
        {
          return MaterialPageRoute(
            builder: (context) => const BestSellerPage(),);
        }
      case RouteNamed.happyDealsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const HappyDealsPage(),);
        }

      default:
        return MaterialPageRoute(builder: (context) => const NotFoundPage(),);
    }
  }
}
