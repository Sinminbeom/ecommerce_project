abstract class AuthLoginState {
  const AuthLoginState();
}

class AuthLoginInitial extends AuthLoginState {
  const AuthLoginInitial();
}

class AuthLoginLoading extends AuthLoginState {
  const AuthLoginLoading();
}

class AuthLoginSucceed extends AuthLoginState {
  const AuthLoginSucceed();
}

class AuthLoginError extends AuthLoginState {
  const AuthLoginError();
}