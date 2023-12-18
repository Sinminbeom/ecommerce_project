import 'package:ecommerce_project/src/views/auth/AuthLogin.dart';
import 'package:ecommerce_project/src/views/auth/AuthRegister.dart';
import 'package:ecommerce_project/src/views/auth/welcome_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: '/',
        path: '/',
        builder: (context, state) => WelcomePage(),
        routes: [
          GoRoute(
            name: 'login',
            path: 'login',
            builder: (context, state) => AuthLogin()
          ),
          GoRoute(
              name: 'register',
              path: 'register',
              builder: (context, state) => AuthRegister()
          )
        ]
      )
    ]
);