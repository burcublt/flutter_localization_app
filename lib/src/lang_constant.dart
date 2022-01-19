import 'package:flutter/widgets.dart';

class LangConstant {
  static const TR_LOCALE = Locale("tr", "TR");
  static const EN_LOCALE = Locale("en", "US");
  static const LANG_PATH = "assets/translations";

  static const SUPPORTED_LOCALE = [
    LangConstant.EN_LOCALE,
    LangConstant.TR_LOCALE,
  ];
}
