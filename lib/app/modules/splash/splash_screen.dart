import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playround/shared/core/theme/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  void timeSplash() async {
    await Future.delayed(Duration(seconds: 3));
    Modular.to.pushNamedAndRemoveUntil('/login', (_) => false);
  }

  @override
  void initState() {
    super.initState();
    timeSplash();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      body: Center(
        child: Image.asset('assets/logo.jpg'),
      ),
    );
  }
}
