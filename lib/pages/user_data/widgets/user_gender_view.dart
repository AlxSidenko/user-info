import 'package:flutter/material.dart';
import 'package:user_info/models/user_gender.dart';
import 'package:user_info/pages/user_data/widgets/sliver_title_text.dart';

import 'sliver_description_text.dart';

class UserGenderView extends StatelessWidget {
  final UserGender userGender;

  const UserGenderView({Key? key, required this.userGender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        const TitleText(title: 'Имя'),
        SliverDescriptionText(description: userGender.name),
        const TitleText(title: 'Пол'),
        SliverDescriptionText(description: userGender.gender ?? 'Unknown'),
        const TitleText(title: 'Количество'),
        SliverDescriptionText(description: userGender.count.toString()),
        const TitleText(title: 'Вероятность'),
        SliverDescriptionText(description: userGender.probability.toString()),
      ],
    );
  }
}
