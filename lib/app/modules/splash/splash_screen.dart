import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';



class SplashScreen extends StatefulWidget {
  final String title;
  const SplashScreen({Key? key, this.title = 'SplashScreen'}) : super(key: key);
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

timeSplash()async{
await Future.delayed(Duration(seconds: 3));
Modular.to.pushNamedAndRemoveUntil('/login',(_)=> false);
}


  @override
  void initState() {
    timeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Icon(Icons.ac_unit,size: 300,),
      ),
    );
  }
}