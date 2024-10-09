/// FileName response_ui
///
/// @Author LinGuanYu
/// @Date 2024/10/2 18:32
///
/// @Description TODO

import 'package:aka_echo_flutter_learning/responsive/desktop_scaffold.dart';
import 'package:aka_echo_flutter_learning/responsive/mobile_scaffold.dart';
import 'package:aka_echo_flutter_learning/responsive/responsive_layout.dart';
import 'package:aka_echo_flutter_learning/responsive/table_scaffold.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      locale: Locale('en', 'US'), // 指定语言环境
      debugShowCheckedModeBanner: false,
      // locale: const Locale('en', 'US'), // 设置为英文，确保是 LTR 布局
      // supportedLocales: const [
      //   Locale('en', 'US'), // 你可以添加其他支持的语言
      // ],
      // localizationsDelegates: GlobalMaterialLocalizations.delegates,
      title: 'response ui',
      // home:TableScaffold(),
      home: ResponsiveLayout(
          mobileScaffold: MobileScaffold(),
          tableScaffold: TableScaffold(),
          desktopScaffold: DesktopScaffold()),
    );
  }
}
