import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:user_info/models/user_nationality.dart';
import 'package:user_info/providers/dio/dio_provider.dart';

part 'user_nationality_provider.g.dart';

@riverpod
Future<UserNationality> userNationality(
  UserNationalityRef ref, {
  required String userName,
}) async {
  final dio = ref.read(dioProvider(baseUrl: 'https://api.nationalize.io/'));
  final response = await dio.get('', queryParameters: {
    'name': userName
  });
  return UserNationality.fromMap(response.data);
}
