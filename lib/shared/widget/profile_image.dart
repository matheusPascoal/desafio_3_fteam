import 'package:flutter/material.dart';
import 'package:playround/shared/core/theme/colors_login_page.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
              'https://cdn.discordapp.com/attachments/979329035148599318/1004933283907383327/Captura_de_tela_2022-08-04_230453.png'),
        ),
        CircleAvatar(
          backgroundColor: AppColor.primary,
          child: Icon(
            Icons.photo_camera,
            color: AppColor.background,
          ),
        )
      ]),
      decoration: BoxDecoration(),
    );
  }
}
