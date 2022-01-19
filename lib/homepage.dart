import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_lang_app/src/lang_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("hello".tr()),
            Text("welcome".tr()),
            ElevatedButton(
                onPressed: () {
                  context.setLocale(LangConstant.TR_LOCALE);
                },
                child: Text('turkish'.tr())),
            ElevatedButton(
                onPressed: () {
                  context.setLocale(LangConstant.EN_LOCALE);
                },
                child: Text('english'.tr()))
          ],
        ),
      ),
    );
  }
}
