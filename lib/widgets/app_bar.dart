import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoes_online/pages/home_page.dart';
import 'package:shoes_online/pages/menu_page.dart';
import 'package:shoes_online/theme/colors.dart';

Widget getAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    ),
  );
}
