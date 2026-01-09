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

  @override
  String get no_job_found => 'No jobs found';

  @override
  String get jobs_tab => 'Jobs';

  @override
  String get inspections_tab => 'Inspections';

  @override
  String get chat_tab => 'Chat';

  @override
  String get notifications_tab => 'Notifications';

  @override
  String get more_tab => 'More';

  @override
  String get tenant_posted_label => 'Unscheduled';

  @override
  String get unsheduled => 'Unscheduled';

  @override
  String get job_urgency_urgent => 'Urgent';

  @override
  String get filter => 'Filter';

  @override
  String get email_required => 'Email required';

  @override
  String get email_invalid => 'Enter a valid email';

  @override
  String get password_required => 'Password required';

  @override
  String get password_min_length => 'Password must be at least 6 characters';

  @override
  String get filter_action => 'Action';

  @override
  String get filter_follow_up => 'Follow Up';

  @override
  String get filter_review => 'Review';

  @override
  String get error_no_internet_jobs => 'No internet and no cached jobs available';

  @override
  String get error_empty_email_password => 'Email and password cannot be empty';

  @override
  String get login_failed_title => 'Login Failed';

  @override
  String get job_main_title => 'Jobs';
}
