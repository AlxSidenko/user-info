import 'dart:io';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@riverpod
Dio dio(
  DioRef ref, {
  required String baseUrl,
}) {
  Dio dio = Dio();
  dio.options.baseUrl = baseUrl;
  dio.options.headers = { HttpHeaders.contentTypeHeader: 'application/json' };
  return dio;
}
