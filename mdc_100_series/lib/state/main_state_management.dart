import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrine/state/lang/translation_services.dart';
import 'package:shrine/state/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPage.INITIAL,
      getPages: AppPage.routes,
      translations: TranslationService(),
      fallbackLocale: TranslationService.fallbackLocale,
      locale: TranslationService.locale,
    );
  }
}
