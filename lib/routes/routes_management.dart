import 'package:flutter/material.dart';
import 'package:reservation_restaurant/routes/route_named.dart';

import '../data/data_reservation.dart';
import '../page/about_us_page/about_us_page.dart';
import '../page/authentication/change_password_page.dart';
import '../page/authentication/forgot_password_page/get_otp_page.dart';
import '../page/authentication/forgot_password_page/success_change_password_page.dart';
import '../page/authentication/forgot_password_page/verify_page.dart';
import '../page/authentication/forgot_password_page/save_new_password_page.dart';
import '../page/authentication/logged_in_page.dart';
import '../page/authentication/logged_out_page.dart';
import '../page/authentication/login_page.dart';
import '../page/authentication/sign_up_page.dart';
import '../page/best_seller_page/best_seller_page.dart';
import '../page/happy_deal_page/happy_deal_page.dart';
import '../page/home_page/home_page.dart';
import '../page/not_found_page/not_found_page.dart';
import '../page/notification_page/notification_page.dart';
import '../page/onboarding/onboading_page.dart';
import '../page/our_retaurant_page/our_restaurant_page.dart';
import '../page/profile_page/profile_page.dart';
import '../page/reservartion_page/reservation_page.dart';
import '../page/review_page/review_page.dart';



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
      case RouteNamed.ourRestaurantPage:
        {
          return MaterialPageRoute(
            builder: (context) => const OurRestaurantPage(),);
        }
      case RouteNamed.notificationPage:
        {
          return MaterialPageRoute(
            builder: (context) => const NotificationPage (),);
        }
      case RouteNamed.signupPage:
        {
          return MaterialPageRoute(
            builder: (context) => const SignUpPage (),);
        }
      case RouteNamed.loginPage:
        {
          return MaterialPageRoute(
            builder: (context) => const LoginPage (),);
        }
      case RouteNamed.loggedOutPage:
        {
          return MaterialPageRoute(
            builder: (context) => const LoggedOutPage (),);
        }
      case RouteNamed.loggedInPage:
        {
          return MaterialPageRoute(
            builder: (context) => const LoggedInPage (),);
        }
      case RouteNamed.changePasswordPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ChangePasswordPage (),);
        }
      case RouteNamed.getOTPPage:
        {
          return MaterialPageRoute(
            builder: (context) => const GetOTPPage (),);
        }
      case RouteNamed.verifyPage:
        {
          return MaterialPageRoute(
            builder: (context) => const VerifyPage (),);
        }
      case RouteNamed.saveNewPassword:
        {
          return MaterialPageRoute(
            builder: (context) => const SaveNewPasswordPage (),);
        }
      case RouteNamed.successChangePassword:
        {
          return MaterialPageRoute(
            builder: (context) => const SuccessChangePasswordPage (),);
        }
      case RouteNamed.reservationPage:
        {
          return MaterialPageRoute(
            builder: (context) => const ReservationPage (),);
        }
      case RouteNamed.reviewPage:
        {
          Reservation data = settings.arguments as Reservation;
          return MaterialPageRoute(
            builder: (context) =>  ReviewPage (reservation: data,),);
        }
      case RouteNamed.aboutUsPage:
        {
          return MaterialPageRoute(
            builder: (context) => const AboutUsPage (),);
        }
      case RouteNamed.profilePage:
        {
          return MaterialPageRoute(
            builder: (context) => const ProfilePage (),);
        }

      default:
        return MaterialPageRoute(builder: (context) => const NotFoundPage(),);
    }
  }
}
