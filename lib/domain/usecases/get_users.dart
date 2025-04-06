import 'package:bloc_application/domain/entities/user.dart';
import 'package:bloc_application/domain/repositories/user_repository.dart';

class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<User>> call() async {
    return repository.getUser();
  }
}
