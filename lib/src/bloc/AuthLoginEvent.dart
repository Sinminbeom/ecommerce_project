abstract class AuthLoginEvent {}

class AuthLoginRequested extends AuthLoginEvent {
  final String email;
  final String password;

  AuthLoginRequested(this.email, this.password);
}