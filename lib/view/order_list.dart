import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proje_siparis/core/init/lang/language_manager.dart';
import 'package:proje_siparis/core/init/lang/locale_keys.g.dart';

class orderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.red[300],
      child: Scrollbar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              LocaleKeys.hosgeldin.tr(),
              style: TextStyle(fontSize: 22),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(LocaleKeys.giris.tr()),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'urunKodu'.tr(),
                  style: TextStyle(backgroundColor: Colors.orangeAccent),
                ),
                Text(
                  LocaleKeys.urunAdi.tr(),
                  style: TextStyle(backgroundColor: Colors.orangeAccent),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(LanguageManager.instance!.trLocale);
                  },
                  child: Text("Türkçe"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await context.setLocale(LanguageManager.instance!.enLocale);
                  },
                  child: Text("English"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
