import 'package:flutter/material.dart';

import 'constants.dart';

/// FileName desktop_scaffold
///
/// @Author LinGuanYu
/// @Date 2024/10/2 18:43
///
/// @Description TODO

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      appBar: myAppBar,
      body: Row(
        children: [
          myDrawer,
        ],
      ),
    );
  }
}
