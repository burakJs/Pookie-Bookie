import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:pookie_bookie/view/home/view/menu_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      default:
        return MaterialPageRoute(
          builder: (context) => MenuView(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
