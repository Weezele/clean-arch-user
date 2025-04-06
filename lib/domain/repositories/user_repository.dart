import 'package:bloc_application/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUser();
  Future<void> addUser(User user);
  Future<void> deleteUser(int id);
}
