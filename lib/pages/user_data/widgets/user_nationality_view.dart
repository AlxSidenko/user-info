import 'package:flutter/material.dart';
import 'package:user_info/models/user_nationality.dart';
import 'package:user_info/pages/user_data/widgets/countries_sliver_list.dart';
import 'package:user_info/pages/user_data/widgets/sliver_title_text.dart';

import 'sliver_description_text.dart';

class UserNationalityView extends StatelessWidget {
  final UserNationality userNationality;

  const UserNationalityView({Key? key, required this.userNationality})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        const TitleText(title: 'Имя'),
        SliverDescriptionText(description: userNationality.name),
        const TitleText(title: 'Страны'),
        CountriesSliverList(countries: userNationality.countries),
      ],
    );
  }
}
