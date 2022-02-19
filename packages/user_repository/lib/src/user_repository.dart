import 'package:user_repository/src/models/user.dart';

class UserRepository {
  User _user = User.empty;

  Future<User> getUser() async {
    return _user;
  }
}
