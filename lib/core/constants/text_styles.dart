import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles{
  TextStyles._();

  static TextStyle appBarTxtStyle = GoogleFonts.vazirmatn(color: CupertinoColors.white,fontWeight: FontWeight.bold);
  static TextStyle genderTxtStyle = GoogleFonts.vazirmatn(color: CupertinoColors.black,fontWeight: FontWeight.normal,fontSize: 14);
  static TextStyle normalBodyTxtStyle = GoogleFonts.vazirmatn(color: CupertinoColors.link,fontWeight: FontWeight.normal,fontSize: 14);
  static TextStyle cmTxtStyle = GoogleFonts.vazirmatn(fontSize: 16,color: Colors.grey.shade500);
  static TextStyle bottomTxtStyle = GoogleFonts.vazirmatn(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold);
}