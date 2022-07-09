part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const REPORT = _Paths.REPORT;
  static const DASHBOARD = _Paths.DASHBOARD;
  static const SPLASH = _Paths.SPLASH;
  static const SIGN_OPTIONS = _Paths.SIGN_OPTIONS;
  static const SIGN_IN = _Paths.SIGN_IN;
  static const SIGN_UP = _Paths.SIGN_UP;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const WELCOME = _Paths.WELCOME;
  static const SETUP = _Paths.SETUP;
  static const BASIC_INFO = _Paths.BASIC_INFO;
  static const LIFESTYLE = _Paths.LIFESTYLE;
  static const CONNECT_DEVICE = _Paths.CONNECT_DEVICE;
  static const CONNECT_SUCCESS = _Paths.CONNECT_SUCCESS;
  static const CONNECT_FAIL = _Paths.CONNECT_FAIL;
  static const CONNECT_PROGRESS = _Paths.CONNECT_PROGRESS;
  static const AGREEMENT = _Paths.AGREEMENT;
  static const FOOD_LOG = _Paths.FOOD_LOG;
  static const LOG_IN = _Paths.LOG_IN;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const REPORT = '/report';
  static const DASHBOARD = '/dashboard';
  static const SPLASH = '/splash';
  static const SIGN_OPTIONS = '/sign-options';
  static const SIGN_IN = '/sign-in';
  static const SIGN_UP = '/sign-up';
  static const FORGOT_PASSWORD = '/forgot-password';
  static const WELCOME = '/welcome';
  static const SETUP = '/setup';
  static const BASIC_INFO = '/basic-info';
  static const LIFESTYLE = '/lifestyle';
  static const CONNECT_DEVICE = '/connect-device';
  static const CONNECT_SUCCESS = '/connect-success';
  static const CONNECT_FAIL = '/connect-fail';
  static const CONNECT_PROGRESS = '/connect-progress';
  static const AGREEMENT = '/agreement';
  static const FOOD_LOG = '/food-log';
  static const LOG_IN = '/log-in';
}
