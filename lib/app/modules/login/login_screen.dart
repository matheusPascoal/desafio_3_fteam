import 'package:flutter/material.dart';
import 'package:playround/shared/core/theme/colors_login_page.dart';
import 'package:playround/shared/widget/generic_button.dart';

import '../../../shared/widget/text_field_generic.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


TextEditingController controller = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hello, \n Are you new here?'),
                SizedBox(
                  height: 10,
                ),
                Text('if you have an account/Login'),
                Form(
                  child: Column(
                    children: [
                      GenericTextField(
                        icon: Icons.person_outline_rounded,
                        labelText:'Full Name' ,
                        obscureText: false,
                        controller: controller,
                        hintText: 'Full Name',
                        
                      ),
                      GenericTextField(
                        icon: Icons.email_outlined,
                        labelText:'E-mail' ,
                        obscureText: false,                 
                        controller: controller,
                        hintText: 'E-mail',
                      ),
                      GenericTextField(
                        icon: Icons.lock_outline_rounded,
                        labelText:'Password' ,
                        obscureText: false,
                        controller: controller,
                        hintText: 'Password',
                        suffuxIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                  
                    ],
                  ),
                ),
                GenericButton(
                  text: 'Sing Up',
                ),
              ]),
        ));
  }
}
