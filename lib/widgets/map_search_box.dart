import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recspot_test/helpers/colors.dart';

class MapSearchBox extends StatelessWidget {
  const MapSearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: AppColors.grey.withOpacity(0.2),
                spreadRadius: 0.5,
                blurRadius: 5,
                offset: const Offset(0, 0),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(FontAwesomeIcons.circleDot,
                        color: AppColors.blue, size: 21),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'My current location',
                        hintStyle: TextStyle(color: AppColors.grey),
                      ),
                      style: TextStyle(color: AppColors.black),
                      cursorColor: AppColors.appColor,
                    ),
                  ),
                ],
              ),
              Row(
                children: const [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(FontAwesomeIcons.locationDot,
                          color: AppColors.appColor, size: 21)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: 'Final Destination',
                        hintStyle: TextStyle(color: AppColors.grey),
                      ),
                      style: TextStyle(color: AppColors.black),
                      cursorColor: AppColors.appColor,
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.add_circle_outline, size: 28))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
