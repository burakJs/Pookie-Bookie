import 'package:flutter/material.dart';
import 'package:pookie_bookie/view/shop/view/shop_view.dart';
import 'package:provider/provider.dart';
import 'core/constants/enums/navigator_route_enum.dart';
import 'core/extension/navigator_routes_extension.dart';
import 'core/init/navigation/navigation_route.dart';
import 'core/init/navigation/navigation_service.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'view/book/view/book_view.dart';
import 'view/home/view/home_view.dart';
import 'view/order-check/view/order_check_view.dart';
import 'view/question/view/question_view.dart';
import 'view/shop/view/shop_view.dart';

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
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      // Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      initialRoute: '/shop',
      routes: {
        NavigatorRoutes.HOME.rawValue: (context) => HomeView(),
        NavigatorRoutes.BOOK.rawValue: (context) => BookView(),
        NavigatorRoutes.ORDER_CHECK.rawValue: (context) => OrderCheckView(),
        NavigatorRoutes.QUESTION.rawValue: (context) => QuestionView(),
        NavigatorRoutes.SHOP.rawValue: (context) => ShopView(),
      },
    );
  }
}
