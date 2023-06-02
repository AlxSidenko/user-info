import 'package:flutter/material.dart';
import 'package:user_info/models/user_age.dart';
import 'package:user_info/models/user_data.dart';
import 'package:user_info/models/user_data_type.dart';
import 'package:user_info/models/user_gender.dart';
import 'package:user_info/models/user_nationality.dart';
import 'package:user_info/pages/user_data/widgets/user_age_view.dart';
import 'package:user_info/pages/user_data/widgets/user_gender_view.dart';
import 'package:user_info/pages/user_data/widgets/user_nationality_view.dart';
import 'package:user_info/utils/app_colors.dart';

class UserDataPage extends StatelessWidget {
  final UserData userData;
  final UserDataType userDataType;

  const UserDataPage(
      {Key? key, required this.userData, required this.userDataType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Данные о Пользователе',
          style: TextStyle(color: AppColors.lightText),
        ),
        iconTheme: const IconThemeData(color: AppColors.lightText),
        backgroundColor: AppColors.accent,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: _getWidgetByUserDataType(),
      ),
    );
  }

  Widget _getWidgetByUserDataType() {
    if (userData is UserAge) {
      return UserAgeView(userAge: userData as UserAge);
    } else if (userData is UserGender) {
      return UserGenderView(userGender: userData as UserGender);
    } else {
      return UserNationalityView(userNationality: userData as UserNationality);
    }
  }
}
