import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../view/home/view/home_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    print(args.name);
    switch (args.name) {
      default:
        return MaterialPageRoute(
          builder: (context) => HomeView(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
