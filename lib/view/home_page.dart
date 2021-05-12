import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:proje_siparis/core/init/lang/locale_keys.g.dart';
import 'package:proje_siparis/view/order_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            Text(LocaleKeys.baslik.tr()),
          ],
          title: Text(LocaleKeys.baslik.tr()),
        ),
        body: orderList(),
      ),
    );
  }
}
