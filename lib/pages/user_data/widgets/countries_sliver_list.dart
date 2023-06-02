import 'package:flutter/material.dart';
import 'package:user_info/models/country.dart';
import 'package:user_info/pages/user_data/widgets/description_text.dart';

class CountriesSliverList extends StatelessWidget {
  final List<Country> countries;

  const CountriesSliverList({Key? key, required this.countries})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return DescriptionText(
          description:
              '${countries[index].countryId} - ${countries[index].probability}');
    }, childCount: countries.length));
  }
}
