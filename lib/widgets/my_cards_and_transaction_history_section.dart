import 'package:flutter/material.dart';

import '../widgets/custom_background_container.dart';
import '../widgets/my_cards_section.dart';
import 'transaction_history.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(
            color: Color(0xFFF1F1F1),
            height: 40,
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
