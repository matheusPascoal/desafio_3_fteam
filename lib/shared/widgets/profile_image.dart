import 'package:flutter/material.dart';
import '../core/service/images_app.dart';
import '../core/theme/app_color.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.35,
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(AppImages.person),
          ),
          const CircleAvatar(
            backgroundColor: AppColor.primary,
            child: Icon(
              Icons.photo_camera,
              color: AppColor.background,
            ),
          )
        ],
      ),
    );
  }
}
