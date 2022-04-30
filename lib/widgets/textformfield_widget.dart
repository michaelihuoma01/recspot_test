import 'package:flutter/material.dart';
import 'package:recspot_test/helpers/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String? hintText;
  const TextFormFieldWidget({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          hintText: hintText ?? '',
          filled: true,
          fillColor: AppColors.grey.withOpacity(0.1),
          hintStyle: const TextStyle(color: AppColors.grey)),
      style: const TextStyle(color: AppColors.black),
      cursorColor: AppColors.appColor,
    );
  }
}
