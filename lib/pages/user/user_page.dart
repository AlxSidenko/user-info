import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_info/models/user_data.dart';
import 'package:user_info/models/user_data_type.dart';
import 'package:user_info/pages/user/widgets/custom_button.dart';
import 'package:user_info/pages/user/widgets/custom_text_field.dart';
import 'package:user_info/pages/user/widgets/loading_container.dart';
import 'package:user_info/pages/user_data/user_data_page.dart';
import 'package:user_info/providers/user_age/user_age_provider.dart';
import 'package:user_info/providers/user_gender/user_gender_provider.dart';
import 'package:user_info/providers/user_nationality/user_nationality_provider.dart';
import 'package:user_info/utils/app_colors.dart';

class UserPage extends ConsumerStatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UserPage> createState() => _UserPageState();
}

class _UserPageState extends ConsumerState<UserPage> {
  final TextEditingController _controller = TextEditingController();
  bool isShowLoading = false;

  @override
  Widget build(BuildContext context) {
    return LoadingContainer(
      isShowLoading: isShowLoading,
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text(
              'Узнай Пользователя',
              style: TextStyle(color: AppColors.lightText),
            ),
            backgroundColor: AppColors.accent,
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                    hintText: 'Введите имя пользователя',
                    controller: _controller),
                const SizedBox(height: 20.0),
                CustomButton(
                    onTap: () => _findUserData(UserDataType.age),
                    text: 'Узнать возраст пользователя'),
                const SizedBox(height: 10.0),
                CustomButton(
                    onTap: () => _findUserData(UserDataType.gender),
                    text: 'Узнать пол пользователя'),
                const SizedBox(height: 10.0),
                CustomButton(
                    onTap: () => _findUserData(UserDataType.nationality),
                    text: 'Узнать национальность пользователя'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _findUserData(UserDataType dataType) async {
    final String userName = _controller.text;

    if (userName.isEmpty) {
      _showUserNotEnteredError();
      return;
    }

    _setShowLoading(true);
    try {
      final UserData userData;
      if (dataType == UserDataType.age) {
        userData = await ref.read(userAgeProvider(userName: userName).future);
      } else if (dataType == UserDataType.gender) {
        userData =
            await ref.read(userGenderProvider(userName: userName).future);
      } else {
        userData =
            await ref.read(userNationalityProvider(userName: userName).future);
      }
      if (mounted) {
        _startUserDataPage(userData, dataType);
      }
    } catch (error) {
      _showErrorSnackBar(error);
    }
    _setShowLoading(false);
  }

  void _startUserDataPage(UserData userData, UserDataType dataType) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => UserDataPage(
          userData: userData,
          userDataType: dataType,
        )));
  }

  void _showUserNotEnteredError() {
    _showErrorSnackBar('Введите имя пользователя');
  }

  void _showErrorSnackBar(Object error) {
    final snackBar = SnackBar(
      content: Text(error.toString()),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _setShowLoading(bool isShow) {
    if (isShow) {
      isShowLoading = true;
    } else {
      isShowLoading = false;
    }
    setState(() {});
  }
}
