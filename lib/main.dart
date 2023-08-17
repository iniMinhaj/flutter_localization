import 'package:flutter/material.dart';
import 'package:flutter_localization/home_screen.dart';
import 'package:flutter_localization/language/language.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

final box = GetStorage();
dynamic langValue = const Locale('en', 'US');
void main() async {
  await GetStorage.init();

  if (box.read('lang') != null) {
    langValue = Locale(box.read('lang'), box.read('langKey'));
  } else {
    langValue = const Locale('en', 'US');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Localization',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: langValue,
      translations: Language(),
      home: const HomeScreen(),
    );
  }
}
