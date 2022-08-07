import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:playround/shared/core/service/image_icons.dart';
import 'package:playround/shared/core/theme/colors_login_page.dart';
import 'package:playround/shared/widget/generic_button.dart';
import '../../../shared/widget/display_widget.dart';
import '../../../shared/widget/drop_flags.dart';
import '../../../shared/widget/profile_image.dart';

class ProfileScreen extends StatefulWidget {
  final String name;
  const ProfileScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 60),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                      Image.network(
                        imageIcons.keysImage,
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Add your profile photo.',
                    style: TextStyle(color: Color.fromARGB(255, 148, 148, 147)),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                ProfileImage(),
                SizedBox(
                  height: 25,
                ),
                Form(
                    child: Column(
                  children: [
                    DisplayWidget(name: widget.name),
                    DropFlags(),
                  ],
                )),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GenericButton(
                    text: 'Confirm',
                    onTap: (() => Modular.to.navigate('/')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
