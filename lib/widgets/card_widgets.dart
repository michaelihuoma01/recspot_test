import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:recspot_test/helpers/colors.dart';

class CardWidgets {
  static List<Widget> cards() {
    List<Widget> cards = [
      Container(
        child: const Image(
          width: 290,
          height: 350,
          image: Svg('assets/svg/bicycle.svg'),
        ),
        decoration: BoxDecoration(
            color: AppColors.appColor, borderRadius: BorderRadius.circular(20)),
      ),
      Container(
          decoration: BoxDecoration(
              color: AppColors.appColor.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20))),
      Container(
          decoration: BoxDecoration(
              color: AppColors.appColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)))
    ];

    return cards;
  }
}
