import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColor {
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color yellowColor = Color(0xFFF1B10F);
  static const Color bgColor = Color(0xFFE2E9FE);
  static const Color purpleColor = Color(0xFF1F0757);
  static const Color blueColor = Color(0xFF0D5AFD);
  static const Color blackColor = Color(0xFF0D0E0D);
}

class Assets {
  static const String icons = "assets/icons/";
  static String images = "assets/images/";
  static const String logo = "assets/logo/";
}

TextStyle blackTextStyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w500, color: ThemeColor.blackColor
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500, color: ThemeColor.purpleColor
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
    fontWeight: FontWeight.w500, color: ThemeColor.whiteColor
);



