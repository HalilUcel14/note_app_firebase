class AppString {
  static AppString? _instance;
  static AppString get instance {
    _instance ??= AppString._init();
    return _instance!;
  }

  AppString._init();
//
  static const appTitle = "My Note App";
//
  static const String noteColleciton = 'Notes';
}
