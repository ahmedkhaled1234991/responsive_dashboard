import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/drawer_item_model.dart';
import '../utils/app_styles.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.onTap,
  });

  final DrawerItemModel drawerItemModel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        hoverColor: const Color(0xffEBEEF3),
        splashColor: const Color(0xffE5E8ED),
        horizontalTitleGap: 6,
        leading: SvgPicture.asset(drawerItemModel.image),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
        ),
        onTap: () => onTap(),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: ListTile(
        hoverColor: const Color(0xffEBEEF3),
        splashColor: const Color(0xffE5E8ED),
        horizontalTitleGap: 6,
        leading: SvgPicture.asset(drawerItemModel.image),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Container(
            width: 3.27,
            decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
