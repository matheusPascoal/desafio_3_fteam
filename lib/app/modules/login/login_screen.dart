import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../shared/core/service/images_app.dart';
import '../../../shared/core/theme/app_color.dart';
import '../../../shared/core/validations/validate.dart';
import '../../../shared/widgets/generic_button.dart';
import '../../../shared/widgets/generic_text_field.dart';
import '../../../shared/widgets/password_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController controllerName = TextEditingController();
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _keyAuth = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.secondary,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.07),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.04,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.07,
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        AppImages.byeImage,
                        width: size.width * 0.05,
                        alignment: Alignment.topLeft,
                      ),
                      Text(
                        ' Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width * 0.05,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.07,
                  ),
                  child: Text(
                    'Are you new here?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.05,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.07,
                ),
                child: Row(
                  children: [
                    Text(
                      'if you have an account/',
                      style: TextStyle(
                        fontSize: size.width * 0.032,
                        color: const Color.fromARGB(
                          255,
                          148,
                          148,
                          147,
                        ),
                      ),
                    ),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: size.width * 0.032,
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                  color: AppColor.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Form(
                      key: _keyAuth,
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.04,
                          ),
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
                            controller: passwordController,
                            labelText: 'Password',
                          ),
                          SizedBox(
                            height: size.height * 0.09,
                          ),
                          GenericButton(
                            onTap: () {
                              if (_keyAuth.currentState!.validate()) {
                                Modular.to.pushNamedAndRemoveUntil(
                                  '/profile',
                                  (_) => false,
                                  arguments: controllerName.text,
                                );
                              }
                            },
                            text: 'Sing Up',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
