part of 'controller.dart';

class PageViewController extends GetxController {
  Widget _currentScreen = const HomePage();
  int _navigationIndex = 0;

  Widget get currentScreen => _currentScreen;
  int get navigationIndex => _navigationIndex;

  changeCurrentScreen(int index) {
    _navigationIndex = index;
    switch (index) {
      case 0:
        _currentScreen = const HomePage();
        break;
      case 1:
        _currentScreen = const CategoryPage();
        break;
      case 2:
        _currentScreen = const VideoPage();
        break;
      case 3:
        _currentScreen = const SettingPage();
        break;
      default:
    }

    update();
  }
}