import 'package:flutter/material.dart';

import 'constants.dart';

/// FileName table_scaffold
///
/// @Author LinGuanYu
/// @Date 2024/10/2 18:42
///
/// @Description TODO
class TableScaffold extends StatelessWidget {
  const TableScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackgroundColor,
      drawer:myDrawer,
      appBar: myAppBar,
        body: const Column(
          children: [
            Text("123"),
          ],
        )
    );
  }
}
