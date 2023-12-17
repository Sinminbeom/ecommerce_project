import 'package:ecommerce_project/src/routes/RouteState.dart';
import 'package:ecommerce_project/src/views/auth/AuthLogin.dart';
import 'package:ecommerce_project/src/views/auth/AuthRegister.dart';
import 'package:ecommerce_project/src/views/auth/welcome_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: RouteState.INITIAL.name,
        path: RouteState.INITIAL.path,
        builder: (context, state) => WelcomePage(),
        routes: [
          GoRoute(
            name: RouteState.LOGIN.name,
            path: RouteState.LOGIN.path,
            builder: (context, state) => AuthLogin()
          ),
          GoRoute(
              name: RouteState.REGISTER.name,
              path: RouteState.REGISTER.path,
              builder: (context, state) => AuthRegister()
          )
        ]
      ),
    ]
);