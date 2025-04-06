import '../models/user_model.dart';
import 'user_api_service.dart';

abstract class UserRemoteDataSource {
  Future<List<UserModel>> getUsers();
  Future<void> addUser(UserModel user);
  Future<void> deleteUser(int id);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final UserApiService apiService;

  UserRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<UserModel>> getUsers() async {
    return await apiService.getUser();
  }

  @override
  Future<void> addUser(UserModel user) async {
    await apiService.addUser(user);
  }

  @override
  Future<void> deleteUser(int id) async {
    await apiService.deleteUser(id);
  }
}
