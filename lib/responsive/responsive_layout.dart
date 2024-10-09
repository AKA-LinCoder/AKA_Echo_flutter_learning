/// FileName responsive_layout
///
/// @Author LinGuanYu
/// @Date 2024/10/2 18:39
///
/// @Description TODO

import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tableScaffold;
  final Widget desktopScaffold;
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tableScaffold,
      required this.desktopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tableScaffold;
      } else {
        return desktopScaffold;
      }
    });
  }
}
