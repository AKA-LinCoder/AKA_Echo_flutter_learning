/// FileName constants
///
/// @Author LinGuanYu
/// @Date 2024/10/3 19:32
///
/// @Description TODO
import 'package:flutter/material.dart';
var myAppBar = AppBar(
  centerTitle: true,
  backgroundColor: Colors.grey[900],
);

var myDrawer =  Drawer(
  backgroundColor: Colors.grey[300],
  child: const Column(
    children: [
      DrawerHeader(child: Icon(Icons.add_circle)),
      ListTile(
        title: Text('Home'),
        leading: Icon(Icons.home),
      ),
      ListTile(
        title: Text('Profile'),
        leading: Icon(Icons.person),
      ),
      ListTile(
        title: Text('Settings'),
        leading: Icon(Icons.settings),
      ),

    ],
  ),
);

var myDefaultBackgroundColor = Colors.grey[300];
