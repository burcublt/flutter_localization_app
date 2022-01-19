import 'package:flutter/material.dart';
import 'package:flutter_lang_app/homepage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_lang_app/src/lang_constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
    child: MyApp(),
    supportedLocales: LangConstant.SUPPORTED_LOCALE,
    path: LangConstant.LANG_PATH,
    fallbackLocale: Locale('tr', 'TR'),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
