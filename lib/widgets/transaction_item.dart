import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../models/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionItem({
    super.key,
    required this.transactionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16.copyWith(
            color: const Color(0xFF064060),
          ),
        ),
        subtitle: Text(
          transactionModel.date,
          style: AppStyles.styleRegular16.copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          '\$${transactionModel.amount}',
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionModel.isWithdrawal
                ? const Color(0xFFF3735E)
                : const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
