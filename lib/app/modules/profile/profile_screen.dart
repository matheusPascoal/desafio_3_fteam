import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 39, 165),
      appBar: AppBar(title: Text('PROFILE SCREEN')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [ElevatedButton(onPressed:() => Modular.to.navigate('/'), child: Text('PROFILE SCREEN'),)],),
      )
      
    );
  }
}