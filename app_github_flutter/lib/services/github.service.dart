import 'package:app_github_flutter/consts/url.dart';
import 'package:app_github_flutter/models/user.dart';
import 'package:dio/dio.dart';

class GitHubService {
  final dio = Dio();

  Future<List<User>> buscarUsuarios() async {
    var response = await dio.get(Urls.urlBase);
    return (response.data as List).map((post) => User.fromJson(post)).toList();
  }

  Future<List<User>> buscarInfoUsuario(String userName) async {
    var response = await dio.get(Urls.urlBase + "/" + userName);
    return (response.data as List).map((post) => User.fromJson(post)).toList();
  }
}
