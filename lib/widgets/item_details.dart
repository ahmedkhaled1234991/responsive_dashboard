import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../models/item_details_model.dart';

class ItemDetails extends StatelessWidget {
  final ItemDetailsModel itemDetailsModel;

  const ItemDetails({
    super.key,
    required this.itemDetailsModel,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 12,
      contentPadding: const EdgeInsets.only(left: 6),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context).copyWith(
          color: const Color(0xFF208CC8),
        ),
      ),
    );
  }
}
