import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../shared/core/service/images_app.dart';
import '../../../shared/core/theme/app_color.dart';
import '../../../shared/widgets/display_widget.dart';
import '../../../shared/widgets/drop_flags.dart';
import '../../../shared/widgets/generic_button.dart';
import '../../../shared/widgets/profile_image.dart';

class ProfileScreen extends StatefulWidget {
  final String name;
  const ProfileScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final TextEditingController controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.background,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: size.width * 0.07),
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.048),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.network(
                          alignment: Alignment.topRight,
                          AppImages.keysImage,
                          height: size.height * 0.07,
                          width: size.width * 0.07,
                        ),
                        Text(
                          'Setting up your,\nprofile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.05,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.width * 0.05,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Add your profile photo.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 201, 198, 198),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.width * 0.1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
                width: size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 244, 241, 241),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.width * 0.1,
                    ),
                    const ProfileImage(),
                    SizedBox(
                      height: size.width * 0.1,
                    ),
                    Form(
                      child: Column(
                        children: [
                          DisplayWidget(name: widget.name),
                          const DropFlags(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.width * 0.15,
                    ),
                    GenericButton(
                      text: 'Confirm',
                      onTap: (() => Modular.to.navigate('/')),
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
