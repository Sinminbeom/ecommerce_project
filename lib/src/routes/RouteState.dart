enum RouteState {
  INITIAL('/'),
  LOGIN('login'),
  REGISTER('register');

  const RouteState(this.path);
  final String path;
}