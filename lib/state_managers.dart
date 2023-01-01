import 'package:property_change_notifier/property_change_notifier.dart';

import 'constants.dart';

class PageState extends PropertyChangeNotifier<String> {
  /// [_currentPage] keeps track of which page is currently viewed.
  int _currentPage = 1;
  int get currentPage => _currentPage;
  static const mainPage = 1;

  /// [setCurrentPage] updates the storage of which page is being viewed.
  setCurrentPage(int val) {
    _currentPage = val;
    notifyListeners(pageListenerKey);
  }

  /// [silentSetCurrent] updates which page is being viewed without notifying listeners.
  silentSetCurrent(int val){
    _currentPage = val;
    notifyListeners();
  }
}