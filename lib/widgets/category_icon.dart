import 'package:flutter/material.dart';
import 'package:recspot_test/helpers/colors.dart';

class CategoryIcon extends StatelessWidget {
  final String? title;
  final Widget icon;
  final Function()? onTap;

  const CategoryIcon(
      {Key? key, required this.title, required this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grey.withOpacity(0.2),
                        spreadRadius: 0.5,
                        blurRadius: 5,
                        offset: const Offset(0, 0),
                      )
                    ]),
                child: icon),
          ),
          const SizedBox(height: 10),
          Text(title ?? ''),
        ],
      ),
    );
  }
}
