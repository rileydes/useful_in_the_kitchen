import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:useful_in_the_kitchen/page/settings.dart';
import 'package:useful_in_the_kitchen/page/home.dart';
import 'package:useful_in_the_kitchen/page/search.dart';


import '../state_managers.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int bottomSelectedIndex = 1;
  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return const[
      BottomNavigationBarItem(
        label: "Settings",
        icon: Icon(Icons.settings),
      ),
      BottomNavigationBarItem(
        label: "Home",
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: "Search",
        icon: Icon(Icons.search),
      ),
    ];
  }

  /// [_pageController] coordinates the navigation and animations between pages.
  final PageController _pageController = PageController(
    initialPage: 1,
    keepPage: true,
  );

  @override dispose() {
    _pageController.dispose();
    context.read<PageState>().removeListener(() { updatePage(); });
    super.dispose();
  }

  @override initState(){
    context.read<PageState>().addListener(() { updatePage(); });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomSelectedIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (index) {
          context.read<PageState>().setCurrentPage(index);
          bottomSelectedIndex = index;
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }

  Widget buildPageView() {
    return Consumer<PageState>(builder:(ctx, currentPage,  widget) {
      final pageView = PageView(
        onPageChanged: (index) {
          pageChanged(index);
        },
        controller: _pageController,
        allowImplicitScrolling: true,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          SettingsPage(),
          HomePage(),
          SearchPage()
        ],
      );

      return pageView;
    }
    );
  }

  updatePage() async{
    int index = context.read<PageState>().currentPage;
    if( index != _pageController.page?.round()){
      bottomSelectedIndex = index;
      await _pageController.animateToPage(
          bottomSelectedIndex,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease
      );
    }
  }

  /// [pageChanged] updates the monitored bottom navigation index.
  pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

}