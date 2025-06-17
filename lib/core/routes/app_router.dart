import 'package:auvnet_flutter_task/features/auth/presentation/pages/login.dart';
import 'package:auvnet_flutter_task/features/auth/presentation/pages/register.dart';
import 'package:auvnet_flutter_task/features/home/presentation/pages/home.dart';
import 'package:auvnet_flutter_task/features/onboarding/presentation/pages/onboarding.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';

  static final GoRouter router = GoRouter(
    initialLocation: onboarding,
    routes: [
      GoRoute(
        path: onboarding,
        builder: (context, state) => const Onboarding(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const Home(),
      ),
    ],
  );
}
