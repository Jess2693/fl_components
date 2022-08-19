import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'home screen',
      screen: const HomeScreen(),
      icon: Icons.home_filled,
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview tipo 1',
      screen: const Listview1Screen(),
      icon: Icons.list_alt_sharp,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview tipo 2',
      screen: const Listview2Screen(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'card',
      name: 'Card',
      screen: const CardScreen(),
      icon: Icons.card_giftcard_rounded,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert',
      screen: const AlertScreen(),
      icon: Icons.warning,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final element in menuOption) {
      appRoutes.addAll({element.route: (context) => element.screen});
    }
    return appRoutes;
  }

  /*  static Map<String, Widget Function(BuildContext)> routes = {
    'home': ((context) => const HomeScreen()),
    'listview1': ((context) => const Listview1Screen()),
    'listview2': ((context) => const Listview2Screen()),
    'card': ((context) => const CardScreen()),
    'alert': ((context) => const AlertScreen()),
  };
 */
  // ignore: non_constant_identifier_names
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
