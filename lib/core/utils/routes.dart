import 'package:flutter/material.dart';
import 'package:profile_design/features/home/presentation/view/home_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/bank_info_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/widgets/delete_bank_account.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/widgets/delete_bank_account_done.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/hedg_learn/hedg_learn_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/my_account/my_account_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/FAQs/faqs_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/delete_account/delete_account_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/notifications_settings/notifications_settings_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/privacy/privacy_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/add_change_phone_num/add_or_change_phone_number_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/add_change_trusted_contact/add_or_change_trusted_contact.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_security_question/change_security_question.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/security_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_view.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/transactions_history/transactions_history_view.dart';
import 'package:profile_design/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:profile_design/features/splash/presentation/view/splash_view.dart';

import '../../features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_email/change_email_view.dart';
import '../../features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_password/change_password_view.dart';
import '../../features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_user_name/change_user_name_view.dart';

class Routes {
  static const String splash = 'splash';
  static const String home = 'home';
  static const String onboarding = 'onboarding';
  static const String myAccountView = 'my_account_view';
  static const String bankInformation = 'BankInfoView';
  static const String deleteBankAccount = 'deleteBankAccount';
  static const String deleteBankAccountDone = 'deleteBankAccountDone';
  static const String transactionsHistory = 'transactionsHistory';
  static const String hedgLearnView = 'HedgLearnView';
  static const String settings = 'settings';
  static const String notificationsSettingsView = "NotificationsSettingsView";
  static const String securitySettingsView = "SecuritySettingsView";
  static const String privacySettingsView = "PrivacySettingsView";
  static const String faqsView = "FAQsView";
  static const String deleteAccountView = "DeleteAccountView";
  static const String changePasswordView = "ChangePasswordView";
  static const String changeOrSetSecurityQuestionView =
      "ChangeOrSetSecurityQuestionView";
  static const String addOrChangePhoneNumberView = "AddOrChangePhoneNumberView";
  static const String addOrChangeTrustedContactView =
      "AddOrChangeTrustedContactView";
  static const String changeUserNameView = "ChangeUserNameView";
  static const String changeEmailView = "ChangeEmailView";
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    return {
      Routes.splash: (context) => const SplashView(),
      Routes.home: (context) => const HomeView(),
      Routes.onboarding: (context) => const OnboardingView(),
      Routes.myAccountView: (context) => const MyAccountView(),
      Routes.bankInformation: (context) => const BankInfoView(),
      Routes.deleteBankAccount: (context) => const DeleteBankAccount(),
      Routes.deleteBankAccountDone: (context) => const DeleteBankAccountDone(),
      Routes.transactionsHistory: (context) => const TransactionsHistoryView(),
      Routes.hedgLearnView: (context) => const HedgLearnView(),
      Routes.settings: (context) => const SettingsView(),
      Routes.notificationsSettingsView: (context) =>
          const NotificationsSettingsView(),
      Routes.securitySettingsView: (context) => const SecurityView(),
      Routes.privacySettingsView: (context) => const PrivacyView(),
      Routes.faqsView: (context) => const FaqsView(),
      Routes.deleteAccountView: (context) => const DeleteAccountView(),
      Routes.changePasswordView: (context) => const ChangePasswordView(),
      Routes.changeOrSetSecurityQuestionView: (context) =>
          const ChangeSecurityQuestionView(),
      Routes.addOrChangePhoneNumberView: (context) =>
          const AddOrChangePhoneNumberView(),
      Routes.addOrChangeTrustedContactView: (context) =>
          const AddOrChangeTrustedContact(),
      Routes.changeUserNameView: (context) => const ChangeUserNameView(),
      Routes.changeEmailView: (context) => const ChangeEmailView(),
    };
  }
}
