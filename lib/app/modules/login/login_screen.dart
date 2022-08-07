import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playround/shared/core/service/image_icons.dart';
import 'package:playround/shared/core/validations/validate.dart';
import 'package:playround/shared/widget/generic_button.dart';
import 'package:playround/shared/widget/password_field.dart';
import '../../../shared/widget/text_field_generic.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  var _keyAuth = GlobalKey<FormState>();
  bool isObscure = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 70),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          Image.network(
                            imageIcons.byeImage,
                            height: 20,
                            width: 20,
                            alignment: Alignment.topLeft,
                          ),
                          Text(' Hello,',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('Are you new here?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'if you have an account/Login',
                        style: TextStyle(
                            color: Color.fromARGB(255, 148, 148, 147)),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                    Form(
                      key: _keyAuth,
                      child: Column(
                        children: [
                          GenericTextField(
                            validation: (value) =>
                                ValidatesService.name(value!),
                            icon: Icons.person_outline_rounded,
                            labelText: 'Full Name',
                            controller: controllerName,
                          ),
                          GenericTextField(
                            validation: (value) =>
                                ValidatesService.email(value!),
                            icon: Icons.email_outlined,
                            labelText: 'E-mail',
                            controller: controllerEmail,
                          ),
                          PasswordField(
                            labelText: 'Password',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    GenericButton(
                      onTap: () {
                        if (_keyAuth.currentState!.validate()) {
                          Modular.to.pushNamedAndRemoveUntil(
                              '/profile', (_) => false,
                              arguments: controllerName.text);
                        }
                      },
                      text: 'Sing Up',
                    ),
                  ]),
            ),
          ),
        ));
  }
}
