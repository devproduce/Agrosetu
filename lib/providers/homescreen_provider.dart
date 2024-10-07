import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier {
  String _username = "John"; // default username, can be fetched from user data

  String get username => _username;

  void setUsername(String name) {
    _username = name;
    notifyListeners();
  }
}

// NavigationProvider to handle bottom navigation
class NavigationProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}


class TabProvider with ChangeNotifier {
  String _selectedTab = 'Crops';

  String get selectedTab => _selectedTab;

  void selectTab(String tab) {
    _selectedTab = tab;
    notifyListeners(); // Notify listeners of the change
  }
}
