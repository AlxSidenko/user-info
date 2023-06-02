import 'package:flutter/material.dart';
import 'package:user_info/pages/user_data/widgets/description_text.dart';

class SliverDescriptionText extends StatelessWidget {
  final String description;

  const SliverDescriptionText({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: DescriptionText(
        description: description,
      ),
    );
  }
}
