import 'package:auvnet_flutter_task/features/onboarding/presentation/pages/onboarding.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String onboarding = '/onboarding';

  static final GoRouter router = GoRouter(
    initialLocation: onboarding,
    routes: [
      GoRoute(
        path: onboarding,
        builder: (context, state) => const Onboarding(),
      ),

    ],
  );
}
