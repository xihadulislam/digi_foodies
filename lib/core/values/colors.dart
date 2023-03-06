import 'package:flutter/material.dart';

const Color scaffoldBackgroundColor = Color(0xff202B3E);

const Color accentColor = Color(0xffDE2B3F);
const Color accentColorLight = Color(0xfff6d0d4);
const Color mainColor = Color(0xff303D5B);

const Color mainColorBlue = Color(0xff4877EF);
const Color accentColorYellow = Color(0xffF8B940);


const Color cardColor = Color(0xff303D5B);
const Color bottomBarColor = Color(0xff323b52);

const Color white = Color(0xfff4f4f8);


const Color iconColor = Color(0xff7F808A);
const Color iconSelectedColor = Color(0xff4877EF);

const Color textPColor = Color(0xffffffff);
const Color textSColor = Color(0xffdcdde2);
// const Color textDColor = Color(0xff7F808A);

const Color kPrimaryColor = Color(0xFFFA6E4F);
const Color kPrimaryColor2 = Color(0xFF34006A);
const Color kBorderColor = Color(0xFF34006A);
const Color kTextColorWhite = Color(0xFFFFFFFF);
const Color kBackGroundColorWhite = Color(0xFFFFFFFF);
const Color kGrayColor = Color(0xFFE7E7E7);
const Color kTextColor = Color(0xFF4A4A4A);
const Color kTextColor2 = Color(0xFFB7B7B7);
const Color kprofileButtonBackGrroundColor = Color(0xFF2B0157);

const Color boxBackColor = Color(0xFFFBFBFB);
const Color primaryColor = Color(0xff4877EF);

const Color placeHolderColor = Color(0xFFF3F1F1);
const Color backColor = Color(0xFF344043);
const Color textBlackColor = Color(0xFF222728);
const Color backGroundColor = Color(0xFFFFFFFF);
const Color borderColor = Color(0xFFDBE2E3);

const Color textColorGray = Color(0xFF899294);
const Color textColorWhite = Color(0xFFFFFFFF);
const Color backGroundColor2 = Color(0xFFF0F6F8);
const Color homeBackGroundColor = Color(0xFFE6E6E6);
const Color educationAndWorkBackGroundColor = Color(0xFFE6E6E6);
const Color kErrorColor = Color(0xFFF03738);
const double kDefaultPadding = 20.0;
final otpInputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 15),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((6)),
    borderSide: BorderSide(color: kBorderColor.withOpacity(0.1)),
  );
}
