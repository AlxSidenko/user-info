import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:user_info/models/user_gender.dart';
import 'package:user_info/providers/dio/dio_provider.dart';

part 'user_gender_provider.g.dart';

@riverpod
Future<UserGender> userGender(
  UserGenderRef ref, {
  required String userName,
}) async {
  final dio = ref.read(dioProvider(baseUrl: 'https://api.genderize.io/'));
  final response = await dio.get('', queryParameters: {
    'name': userName
  });
  return UserGender.fromMap(response.data);
}
