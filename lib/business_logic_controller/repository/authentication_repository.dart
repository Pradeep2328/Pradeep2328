library authentication_repository;

//export 'authentication_repository.g.dart';

import 'dart:async';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    //await Future<void>.delayed(duration)
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    // TODO : Implement login API
    _controller.add(AuthenticationStatus.authenticated);
  }

  void logOut() async {
    // TODO : Implement logout API
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
