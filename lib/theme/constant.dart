import 'package:flutter/material.dart';

//Colors
const primaryColor = Colors.black;
const secondaryColor = Colors.white;
const bgColor = Colors.white;
Color buttonColor = const Color(0xffFA1815).withOpacity(.7);
Color floatColor = const Color(0xffFA1815);
const verifyColor = Color(0xff4951B5);
Color welcomeColor = Colors.black.withOpacity(.5);
Color contentDetailColor = Colors.white.withOpacity(.7);
Color contentPageDetailColor = Colors.black.withOpacity(.7);

//Texts
class Constant {
  static TextStyle nameText = const TextStyle(
      fontFamily: "Crimson Pro",
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: primaryColor);
  static TextStyle welcomeText = TextStyle(
      fontFamily: "Crimson Pro",
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: welcomeColor);
  static TextStyle searchText = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: secondaryColor);
  static TextStyle header = const TextStyle(
      fontFamily: "Crimson Pro",
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: primaryColor);
  static TextStyle contentHomeTitle = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: secondaryColor);
  static TextStyle contentHomeSubtitle = TextStyle(
      fontFamily: "Manrope",
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: contentDetailColor);
  static TextStyle contentEmpty = const TextStyle(
      fontFamily: "Crimson Pro",
      fontSize: 30,
      fontWeight: FontWeight.w600,
      color: primaryColor);
  static TextStyle contentButtonText = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: primaryColor);
  static TextStyle contentPageTitle = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: primaryColor);
  static TextStyle contentPageSubTitle = TextStyle(
      fontFamily: "Manrope",
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: contentPageDetailColor);
  static TextStyle contentLikeCounter = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: primaryColor);
  static TextStyle revelantTitle = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: primaryColor);
  static TextStyle revelantSubTitle = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: primaryColor);
  static TextStyle likeCounter = const TextStyle(
      fontFamily: "Manrope",
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: primaryColor);
  static TextStyle profileText = const TextStyle(
      fontFamily: "Crimson Pro",
      fontSize: 50,
      fontWeight: FontWeight.w600,
      color: primaryColor);
}
