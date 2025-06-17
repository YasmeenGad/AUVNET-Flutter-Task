import 'package:auvnet_flutter_task/core/routes/app_router.dart';
import 'package:auvnet_flutter_task/core/utils/config/media_query_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
        builder: (context, child) {
          MediaQueryConfig.init(context);
          return child!;
        });
  }
}
