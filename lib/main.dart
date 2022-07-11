import 'package:flutter/material.dart';
import 'package:stapper/Screen/Home_Page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Home_Page(),
      },
    ),
  );
}
