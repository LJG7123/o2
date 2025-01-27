import 'package:go_router/go_router.dart';
import 'package:o2/presentation/screens/auth/sign_up/sign_up_screen.dart';
import 'package:o2/presentation/screens/home_screen.dart';

GoRouter get router => _router;

final GoRouter _router = GoRouter(
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/signUp",
      builder: (context, state) => const SignUpScreen(),
    ),
  ],
);
