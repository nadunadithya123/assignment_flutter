import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'My App'**
  String get appTitle;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @welcomeMessage.
  ///
  /// In en, this message translates to:
  /// **'Welcome, {name}!'**
  String welcomeMessage(Object name);

  /// Enter Email
  ///
  /// In en, this message translates to:
  /// **'Enter Email'**
  String get login_email_lable;

  /// Enter Password
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get login_password_lable;

  /// Login to your account
  ///
  /// In en, this message translates to:
  /// **'Login to your account'**
  String get login_to_your_account_title;

  /// LOGIN
  ///
  /// In en, this message translates to:
  /// **'LOGIN'**
  String get login_button;

  /// Forgot password?
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password_link;

  /// No jobs found
  ///
  /// In en, this message translates to:
  /// **'No jobs found'**
  String get no_job_found;

  /// Label for Jobs tab in BottomNavigationBar
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get jobs_tab;

  /// Label for Inspections tab in BottomNavigationBar
  ///
  /// In en, this message translates to:
  /// **'Inspections'**
  String get inspections_tab;

  /// Label for Chat tab in BottomNavigationBar
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat_tab;

  /// Label for Notifications tab in BottomNavigationBar
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications_tab;

  /// Label for More tab in BottomNavigationBar
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more_tab;

  /// Label for tenant posted job status
  ///
  /// In en, this message translates to:
  /// **'Unscheduled'**
  String get tenant_posted_label;

  /// No description provided for @unsheduled.
  ///
  /// In en, this message translates to:
  /// **'Unscheduled'**
  String get unsheduled;

  /// Label for jobs with urgency type 'Urgent'
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get job_urgency_urgent;

  /// Label for filter button or filter feature
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// Validation message when email is empty
  ///
  /// In en, this message translates to:
  /// **'Email required'**
  String get email_required;

  /// Validation message when email format is invalid
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email'**
  String get email_invalid;

  /// Validation message when password is empty
  ///
  /// In en, this message translates to:
  /// **'Password required'**
  String get password_required;

  /// Validation message when password is too short
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get password_min_length;

  /// Filter option: Action
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get filter_action;

  /// Filter option: Follow Up
  ///
  /// In en, this message translates to:
  /// **'Follow Up'**
  String get filter_follow_up;

  /// Filter option: Review
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get filter_review;

  /// Error shown when offline and no cached jobs exist
  ///
  /// In en, this message translates to:
  /// **'No internet and no cached jobs available'**
  String get error_no_internet_jobs;

  /// Error shown when the user submits login form with empty email or password
  ///
  /// In en, this message translates to:
  /// **'Email and password cannot be empty'**
  String get error_empty_email_password;

  /// Title shown in a snackbar or dialog when login fails
  ///
  /// In en, this message translates to:
  /// **'Login Failed'**
  String get login_failed_title;

  /// Jobs page opening Title
  ///
  /// In en, this message translates to:
  /// **'Jobs'**
  String get job_main_title;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
