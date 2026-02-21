import 'package:dio/dio.dart';
import 'package:flutter_network/features/random_user_entity.dart';

class RandomUserService {
  final Dio dio = Dio();
  final baseUrl = 'https://randomuser.me/api/';

  Future<List<RandomUserEntity>> getRandomUsers() async {
    try {
      final response = await dio.get('$baseUrl?results=20');
      final results = response.data['results'] as List<dynamic>;
      return results.map((e) => RandomUserEntity.fromJson(e)).toList();
    } catch (e, stackTrace) {
      print('Stack Trace: $stackTrace');
      throw Exception('Failed to fetch random users');
    }
  }
}
