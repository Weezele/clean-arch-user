import 'package:bloc_application/domain/repositories/user_repository.dart';

class DeleteUser {
  final UserRepository repository;

  DeleteUser(this.repository);

  Future<void> call(int id) async {
    await repository.deleteUser(id);
  }
}