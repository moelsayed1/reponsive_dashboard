import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/generated/app_images.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar2,
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
        ],
      ),
    );
  }
}
