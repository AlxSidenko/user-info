import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:user_info/models/user_age.dart';
import 'package:user_info/providers/dio/dio_provider.dart';

part 'user_age_provider.g.dart';

@riverpod
Future<UserAge> userAge(
  UserAgeRef ref, {
  required String userName,
}) async {
  final dio = ref.read(dioProvider(baseUrl: 'https://api.agify.io/'));
  final response = await dio.get('', queryParameters: {
    'name': userName
  });
  return UserAge.fromMap(response.data);
}
