import 'package:flutter/material.dart';
import 'package:user_info/utils/app_colors.dart';

class DescriptionText extends StatelessWidget {
  final String description;

  const DescriptionText({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, bottom: 8.0),
      child: Text(
        description,
        style: const TextStyle(
            color: AppColors.hintText,
            fontSize: 16.0,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
