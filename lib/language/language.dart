import 'package:flutter_localization/language/arabic.dart';
import 'package:flutter_localization/language/english.dart';
import 'package:get/get.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': engilsh,
        'ar_AR': arabic,
      };
}
