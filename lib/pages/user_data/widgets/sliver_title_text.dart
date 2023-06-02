import 'package:flutter/material.dart';
import 'package:user_info/utils/app_colors.dart';

class TitleText extends StatelessWidget {
  final String title;

  const TitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        title,
        style: const TextStyle(
            color: AppColors.defaultText,
            fontSize: 18.0,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
