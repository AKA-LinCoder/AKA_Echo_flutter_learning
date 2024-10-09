import 'package:aka_echo_flutter_learning/responsive/constants.dart';
import 'package:flutter/material.dart';

/// FileName mobile_scaffold
///
/// @Author LinGuanYu
/// @Date 2024/10/2 18:42
///
/// @Description TODO

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

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
