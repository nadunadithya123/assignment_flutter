// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'My App';

  @override
  String get login => 'Login';

  @override
  String welcomeMessage(Object name) {
    return 'Welcome, $name!';
  }

  @override
  String get login_email_lable => 'Enter Email';

  @override
  String get login_password_lable => 'Enter Password';

  @override
  String get login_to_your_account_title => 'Login to your account';

  @override
  String get login_button => 'LOGIN';

  @override
  String get forgot_password_link => 'Forgot password?';
}
