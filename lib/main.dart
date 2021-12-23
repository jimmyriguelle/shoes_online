import 'package:flutter/material.dart';
import 'package:shoes_online/pages/cart_page.dart';
import 'package:shoes_online/pages/home_page.dart';
import 'package:shoes_online/pages/menu_page.dart';
import 'package:shoes_online/pages/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Averta'),
      home: const HomePage(),
    );
  }
}
