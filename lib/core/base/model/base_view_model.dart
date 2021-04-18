import 'package:flutter/material.dart';
import 'package:pookie_bookie/core/init/cache/locale_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../init/navigation/navigation_service.dart';

abstract class BaseViewModel {
  BuildContext context;

  NavigationService navigationService = NavigationService.instance;

  void setContext(BuildContext context);
  void init();
}
