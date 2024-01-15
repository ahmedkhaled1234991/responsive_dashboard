import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'my_cards_and_transaction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 5,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardsAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
                SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 32,
        )
      ],
    );
  }
}
