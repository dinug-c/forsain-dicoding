import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 20.0;
double defaultRadius = 10.0;

Color colorPrimary = const Color(0xff02225E);
Color backgroundColor = const Color(0xffFFFFFF);
Color textColor = const Color(0xff34364A);
Color textLighterColor = const Color(0xff494C68);
Color greyColor = const Color(0xffC3C7D1);
Color redColor = const Color(0xffDE0C0C);
Color borderColor = const Color(0xffE9EAEB);
Color greenColor = const Color.fromRGBO(44, 144, 7, 1);
Color blueLightColor = const Color(0xffF6F9FF);
Color blueColor = const Color.fromARGB(255, 44, 135, 255);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

TextStyle regularTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: textColor,
  fontSize: 14,
);
TextStyle mediumTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500,
  color: textColor,
  fontSize: 14,
);
TextStyle semiBoldTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w600,
  color: textColor,
  fontSize: 14,
);
TextStyle boldTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w700,
  color: textColor,
  fontSize: 14,
);

InputDecoration textFieldDecoration(String? hint, String? text, String? prefix,
    {required bool isActive}) {
  return InputDecoration(
      hintText: hint,
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      fillColor: isActive ? Colors.white : greyColor.withOpacity(0.3),
      filled: true,
      hintStyle: regularTextStyle.copyWith(fontSize: 14, color: greyColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colorPrimary),
      ),
      suffixText: text ?? "",
      prefix: Text(prefix ?? ""));
}

double parentW(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double parentH(BuildContext context) {
  return MediaQuery.of(context).size.height;
}
