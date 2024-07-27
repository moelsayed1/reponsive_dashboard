import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/generated/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class DrawerItemListView extends StatelessWidget {
  const DrawerItemListView({super.key});

  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesInvestment, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(
            drawerItemModel: drawerItems[index],
          ),
        );
      },
    );
  }
}