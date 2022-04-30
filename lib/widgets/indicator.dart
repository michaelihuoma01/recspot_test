import 'package:flutter/material.dart';
import 'package:recspot_test/helpers/colors.dart';

class CardIndicator extends StatelessWidget {
  final bool? isActive;
  const CardIndicator({Key? key, required this.isActive}) : super(key: key);

  static List<Widget> buildPageIndicator(int length, currentIndex) {
    final list = <Widget>[];
    for (var i = 0; i < length; i++) {
      list.add(i == currentIndex
          ? const CardIndicator(isActive: true)
          : const CardIndicator(isActive: false));
    }
    return list;
  }

  @override 
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
      margin: const EdgeInsets.symmetric(horizontal: 3.0),
      height: 4.0,
      width: isActive! ? 25.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive! ? AppColors.purple : AppColors.purple.withOpacity(0.4),
        borderRadius: const BorderRadius.all(Radius.circular((25))),
      ),
    );
  }
}
