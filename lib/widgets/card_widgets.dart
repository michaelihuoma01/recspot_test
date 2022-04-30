import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CardWidgets {
  static List<Widget> cards() {
    List<Widget> cards = [
      Container(
        child: Image(
          width: 250,
          height: 100,
          image: Svg('assets/svg/bicycle.svg'),
        ),
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(20)),
      ),
      Container(
          decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.7),
              borderRadius: BorderRadius.circular(20))),
      Container(
          decoration: BoxDecoration(
              color: Colors.orangeAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)))
    ];

    return cards;
  }
}
