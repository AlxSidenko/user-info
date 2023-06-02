import 'package:flutter/material.dart';
import 'package:user_info/models/user_age.dart';
import 'package:user_info/pages/user_data/widgets/sliver_description_text.dart';
import 'package:user_info/pages/user_data/widgets/sliver_title_text.dart';

class UserAgeView extends StatelessWidget {
  final UserAge userAge;

  const UserAgeView({Key? key, required this.userAge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        const TitleText(title: 'Имя'),
        SliverDescriptionText(description: userAge.name),
        const TitleText(title: 'Возраст'),
        SliverDescriptionText(description: userAge.age.toString()),
        const TitleText(title: 'Количество'),
        SliverDescriptionText(description: userAge.count.toString()),
      ],
    );
  }
}
