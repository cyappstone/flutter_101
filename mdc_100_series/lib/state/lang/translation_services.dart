
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrine/state/lang/en_us.dart';
import 'package:shrine/state/lang/zh_tw.dart';


class TranslationService extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('en', 'US');
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'zh_TW': zh_TW,
      };
}