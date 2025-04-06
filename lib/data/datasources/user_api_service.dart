import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../models/user_model.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class UserApiService {
  factory UserApiService(Dio dio, {String baseUrl}) = _UserApiService;

  @GET('/users')
  Future<List<UserModel>> getUser();

  @POST('/users')
  Future<UserModel> addUser(@Body() UserModel user);

  @DELETE('/users/{id}')
  Future<void> deleteUser(@Path('id') int id);
}
