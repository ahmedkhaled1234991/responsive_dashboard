import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'views/dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const ResponsiveDashboard(),
    ),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashboardView(),
    );
  }
}
