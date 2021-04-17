import 'package:flutter/material.dart';
import 'package:pookie_bookie/view/order-check/view/order_check_view.dart';
import 'package:provider/provider.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';

void main() {
  // LocaleManager.preferencesInit();
  runApp(
    MultiProvider(
      providers: [...ApplicationProvider.instance.dependItems],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      home: OrderCheckView(),
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
