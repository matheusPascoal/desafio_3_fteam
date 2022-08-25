import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../shared/core/theme/app_color.dart';

class AppWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'My Smart App',
      theme: ThemeData(
        backgroundColor: AppColor.background,
        primaryColor: AppColor.primary,
        cardColor: AppColor.black,
        secondaryHeaderColor: AppColor.secondary,
        shadowColor: AppColor.cardGrey,
        errorColor: AppColor.redColor,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ); //added by extension
  }
}
