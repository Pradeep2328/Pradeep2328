import '../user_repository.dart';

class UserRepository {
  User _user = User.empty;

  Future<User> getUser() async {
    return _user;
  }
}
