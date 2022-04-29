import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  String? title;
  Widget icon;
  Function()? onTap;

  CategoryIcon({required this.title, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(height: 40),
          Text(title!),
        ],
      ),
    );
  }
}
