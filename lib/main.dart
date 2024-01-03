// ignore_for_file: prefer_const_constructors

import 'package:clon_whastapp/screens/whatsapp_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.green),
      home: Whatsapp(),
    );
  }
}
