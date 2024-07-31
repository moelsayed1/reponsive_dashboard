import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key, required this.userInfoModel});

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          userInfoModel.image,
        ),
        title: Text(
          userInfoModel.title,
          style: StylesApp.styleSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.subTitle,
          style: StylesApp.styleRegular12,
        ),
      ),
    );
  }
}
