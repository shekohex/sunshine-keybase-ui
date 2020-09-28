import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sunshine/constants.dart';
import 'package:sunshine/router/router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sunshine Keybase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.mainBackground,
      ),
      builder: ExtendedNavigator(
        router: Router(),
        onUnknownRoute: _onUnknownRoute,
      ),
    );
  }

  Route _onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text('No route defined for ${settings.name}'),
        ),
      ),
    );
  }
}
