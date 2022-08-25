import 'package:flutter/material.dart';
import '../core/service/images_app.dart';

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
          CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            child: Icon(
              Icons.photo_camera,
              color: Theme.of(context).backgroundColor,
            ),
          )
        ],
      ),
    );
  }
}
