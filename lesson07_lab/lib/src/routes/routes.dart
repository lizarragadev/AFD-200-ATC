import 'package:flutter/widgets.dart';
import 'package:lesson07_lab/src/screens/bottom_nav_bar_screen.dart';
import 'package:lesson07_lab/src/screens/data_tables_screen.dart';
import 'package:lesson07_lab/src/screens/drawers_screen.dart';
import 'package:lesson07_lab/src/screens/home_screen.dart';
import 'package:lesson07_lab/src/screens/listview_listiles_screen.dart';
import 'package:lesson07_lab/src/screens/stacks_screen.dart';
import 'package:lesson07_lab/src/screens/tab_bars_screen.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => HomeScreen(),
    '/bottomNav': (context) => const BottomNavBarScreen(),
    '/tabs': (context) => const TabBarsScreen(),
    '/drawers': (context) => const DrawersScreen(),
    '/listview': (context) => const ListViewListilesScreen(),
    '/dataTable': (context) => const DataTablesScreen(),
    '/selectableText': (context) => const DataTablesScreen(),
    '/stack': (context) => const StacksScreen()
  };
}
