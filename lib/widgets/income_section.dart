import 'package:flutter/material.dart';

import '../widgets/custom_background_container.dart';
import 'income_chart.dart';
import 'income_details.dart';
import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            IncomeSectionHeader(),
            SizedBox(
              height: 16,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: IncomeChart(),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 7,
                  child: IncomeDetails(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
