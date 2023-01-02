import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import 'package:useful_in_the_kitchen/page/settings.dart';
import 'package:useful_in_the_kitchen/page/recipe.dart';

import 'cart.dart';
import 'list.dart';
import 'macros.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xff5d631b),
            onPrimary: Color(0xffffffff),
            primaryContainer: Color(0xffe1ed4c),
            onPrimaryContainer: Color(0xff2c2c2c),
            secondary: Color(0xff5e6046),
            onSecondary: Color(0xffffffff),
            secondaryContainer: Color(0xffe4e5c4),
            onSecondaryContainer: Color(0xff1b1d09),
            tertiary: Color(0xff48655a),
            onTertiary: Color(0xffffffff),
            tertiaryContainer: Color(0xffcaecdd),
            onTertiaryContainer: Color(0xff0b1f19),
            error: Color(0xffa62d26),
            onError: Color(0xfff7dbd6),
            onErrorContainer: Color(0xff390604),
            background: Color(0xfffefcf4),
            onBackground: Color(0xff1c1c18),
            surface: Color(0xfffefcf4),
            onSurface: Color(0xff1c1c18),
            surfaceVariant: Color(0xffe4e3d4),
            onSurfaceVariant: Color(0xff47473c),
            outline: Color(0xff78786b),
            inversePrimary: Color(0xffc3cf42)
        )
      ),
      home: const Home(restorationId: "pageRestore"),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.restorationId,
  }) : super(key: key);

  final String restorationId;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with RestorationMixin {
  final RestorableInt _currentIndex = RestorableInt(0);

  @override
  String get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_currentIndex, 'bottom_navigation_tab_index');
  }

  @override
  void dispose() {
    _currentIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var pages = const <Widget>[
      RecipePage(),
      MacrosPage(),
      CartPage(),
      ListPage(),
      SettingsPage()
    ];

    return Scaffold(
      body: Center(
        child: PageTransitionSwitcher(
          transitionBuilder: (child, animation, secondaryAnimation) {
            return FadeThroughTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              child: child,
            );
          },
          child: pages[_currentIndex.value],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 250),
        backgroundColor: Theme.of(context).colorScheme.surface,
        surfaceTintColor: const Color(0xffffffff),
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _currentIndex.value,
        onDestinationSelected: (index) {
          setState(() {
            _currentIndex.value = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: 'Recipes',
          ),
          NavigationDestination(
            icon: Icon(Icons.restaurant_menu),
            label: 'Macros'
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart'
          ),
          NavigationDestination(
            icon: Icon(Icons.list),
            label: 'Pantry'
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'You'
          ),
        ],
      ),
    );
  }
}