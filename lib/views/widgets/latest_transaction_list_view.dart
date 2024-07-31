import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/generated/app_images.dart';
import 'package:responsive_dashboard/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  
  static const items = [
    UserInfoModel(image: Assets.imagesAvatar1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesAvatar3, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesAvatar1, title: 'Madrani Andi', subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return UserInfoListTile(userInfoModel: items[index]);
        });
  }
}
