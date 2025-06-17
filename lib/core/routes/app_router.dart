import 'package:auvnet_flutter_task/features/auth/presentation/pages/login.dart';
import 'package:auvnet_flutter_task/features/onboarding/presentation/pages/onboarding.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String onboarding = '/onboarding';
  static const String login = '/login';

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
    ],
  );
}
