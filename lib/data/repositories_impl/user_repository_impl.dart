import '../../domain/entities/user.dart';
import '../../domain/repositories/user_repository.dart';
import '../datasources/user_remote_data_source.dart';
import '../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<User>> getUser() async {
    final userModels = await remoteDataSource.getUsers();
    return userModels.map((model) => model.toEntity()).toList();
  }

  @override
  Future<void> addUser(User user) async {
    final model = UserModel.fromEntity(user);
    await remoteDataSource.addUser(model);
  }

  @override
  Future<void> deleteUser(int id) async {
    await remoteDataSource.deleteUser(id);
  }
}
