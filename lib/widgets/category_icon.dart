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
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                   borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  )
                ]),
                child: icon),
          ),
          const SizedBox(height: 10),
          Text(title!),
        ],
      ),
    );
  }
}
