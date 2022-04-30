import 'package:flutter/material.dart';
import 'package:recspot_test/helpers/colors.dart';

class AppBarWidget extends StatelessWidget {
  final String? title;
  final Color? bgColor;
  const AppBarWidget({Key? key, this.title, required this.bgColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: bgColor,
      elevation: 0,
      centerTitle: true,
      title: Text(title ?? '',
          style: const TextStyle(fontSize: 23, color: AppColors.black)),
    );
  }
}
