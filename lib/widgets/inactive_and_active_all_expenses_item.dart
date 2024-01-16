import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';
import 'all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel itemModel;

  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: width < SizeConfig.tablet ? 8 : 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                color: const Color(0xFF064060),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              itemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatefulWidget {
  final AllExpensesItemModel itemModel;

  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  @override
  State<ActiveAllExpensesItem> createState() => _ActiveAllExpensesItemState();
}

class _ActiveAllExpensesItemState extends State<ActiveAllExpensesItem>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    animation = Tween(begin: 0.4, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return FadeTransition(
      opacity: animation,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width < SizeConfig.tablet ? 8 : 20, vertical: 16),
        decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              imageBackground: Colors.white.withOpacity(0.1),
              imageColor: Colors.white,
              image: widget.itemModel.image,
            ),
            const SizedBox(
              height: 34,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.itemModel.title,
                style: AppStyles.styleSemiBold16(context).copyWith(
                  color: Colors.white, //const Color(0xFF064060),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.itemModel.date,
                style: AppStyles.styleRegular14(context).copyWith(
                  color: const Color(0xFFFAFAFA),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.itemModel.price,
                style: AppStyles.styleSemiBold24(context).copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
