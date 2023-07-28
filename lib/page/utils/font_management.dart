import 'dart:ui';
import 'package:flutter/material.dart';
import 'color_management.dart';

class FontManagement {
  static TextStyle? normalStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: ColorManagement.grey_99);
  static TextStyle? smallNormalStyle = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: ColorManagement.grey_99);
  static TextStyle? biggerNormalStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: ColorManagement.white);
  static TextStyle? boldStyle = TextStyle(
      fontSize: 18, color: ColorManagement.brow_1, fontWeight: FontWeight.w600);
  static TextStyle? moreBoldStyle = TextStyle(
      fontSize: 16, color: ColorManagement.brow_1, fontWeight: FontWeight.w700);
  static TextStyle? ourRestaurantName = TextStyle(
      fontSize: 16, color: ColorManagement.brow_1, fontWeight: FontWeight.w600);
  static TextStyle? addressRestaurantName = TextStyle(
      fontSize: 12, color: ColorManagement.brow_1, fontWeight: FontWeight.w400);
  static TextStyle? titleHappyDeals = TextStyle(
      fontSize: 16, color: ColorManagement.white, fontWeight: FontWeight.w600);
  static TextStyle? contentHappyDeals = TextStyle(
      fontSize: 14, color: ColorManagement.white, fontWeight: FontWeight.w600);
  static TextStyle? contentHappyDeals2 = TextStyle(
      fontSize: 14, color: ColorManagement.white, fontWeight: FontWeight.w400);

}
