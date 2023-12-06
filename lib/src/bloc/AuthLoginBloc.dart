import 'dart:async';

import 'package:ecommerce_project/src/bloc/AuthLoginEvent.dart';
import 'package:ecommerce_project/src/bloc/AuthLoginState.dart';
import 'package:ecommerce_project/src/repository/AuthRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthLoginBloc extends Bloc<AuthLoginEvent, AuthLoginState>{
  final AuthRepository authRepository;
  AuthLoginBloc(this.authRepository) : super(const AuthLoginInitial()) {
    on<AuthLoginRequested>(_onAuthLoginRequested);
  }

  FutureOr<void> _onAuthLoginRequested(AuthLoginRequested event, Emitter<AuthLoginState> emit) {
    print(event.email);
  }
}