import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice_section.dart';
import 'income_section.dart';
import 'my_cards_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: MediaQuery.sizeOf(context).width < 800
            ? const EdgeInsets.symmetric(horizontal: 16)
            : EdgeInsets.zero,
        child: const Column(
          children: [
            AllExpensesAndQuickInvoiceSection(),
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
    );
  }
}
