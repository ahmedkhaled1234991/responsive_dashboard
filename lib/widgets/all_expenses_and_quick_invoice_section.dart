import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).width < 800 ? 24 : 40,
        ),
        const AllExpenses(),
        const SizedBox(
          height: 24,
        ),
        const QuickInvoice(),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
