import '../constants/enums/navigator_route_enum.dart';

extension NavigatorRouteExtension on NavigatorRoutes {
  String get rawValue {
    switch (this) {
      case NavigatorRoutes.HOME:
        return '/home';
      case NavigatorRoutes.BOOK:
        return '/book';
      case NavigatorRoutes.SHOP:
        return '/shop';
      case NavigatorRoutes.ORDER_CHECK:
        return '/ordercheck';
      case NavigatorRoutes.QUESTION:
        return '/question';
      default:
        return 'ERROR TYPE';
    }
  }
}
