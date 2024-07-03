// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get _locale {
    return Intl.message(
      'en',
      name: '_locale',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get loginLabel {
    return Intl.message(
      'Log in',
      name: 'loginLabel',
      desc: 'localizable of Log in',
      args: [],
    );
  }

  /// `Email`
  String get loginEmailField {
    return Intl.message(
      'Email',
      name: 'loginEmailField',
      desc: 'localizable of Email',
      args: [],
    );
  }

  /// `Password`
  String get loginPasswordField {
    return Intl.message(
      'Password',
      name: 'loginPasswordField',
      desc: 'localizable of Password',
      args: [],
    );
  }

  /// `Log in`
  String get loginButton {
    return Intl.message(
      'Log in',
      name: 'loginButton',
      desc: 'localizable of Log in',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get loginForgotPasswordButton {
    return Intl.message(
      'Forgot your password?',
      name: 'loginForgotPasswordButton',
      desc: 'localizable of Forgot your password?',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get loginDontHaveAccountLabel {
    return Intl.message(
      'Don\'t have an account?',
      name: 'loginDontHaveAccountLabel',
      desc: 'localizable of Don\'t have an account?',
      args: [],
    );
  }

  /// `Sign up`
  String get loginDontHaveAccountButton {
    return Intl.message(
      'Sign up',
      name: 'loginDontHaveAccountButton',
      desc: 'localizable of Sign up',
      args: [],
    );
  }

  /// `Create Account`
  String get registerLabel {
    return Intl.message(
      'Create Account',
      name: 'registerLabel',
      desc: 'localizable of Create Account',
      args: [],
    );
  }

  /// `First Names`
  String get registerNamesField {
    return Intl.message(
      'First Names',
      name: 'registerNamesField',
      desc: 'localizable of First Names',
      args: [],
    );
  }

  /// `Last Names`
  String get registerLastNamesField {
    return Intl.message(
      'Last Names',
      name: 'registerLastNamesField',
      desc: 'localizable of Last Names',
      args: [],
    );
  }

  /// `Email`
  String get registerEmailField {
    return Intl.message(
      'Email',
      name: 'registerEmailField',
      desc: 'localizable of Email',
      args: [],
    );
  }

  /// `Password`
  String get registerPasswordField {
    return Intl.message(
      'Password',
      name: 'registerPasswordField',
      desc: 'localizable of Password',
      args: [],
    );
  }

  /// `Accept`
  String get registerTermsAndConditionsLabel {
    return Intl.message(
      'Accept',
      name: 'registerTermsAndConditionsLabel',
      desc: 'localizable of Accept terms and conditions',
      args: [],
    );
  }

  /// `terms and conditions`
  String get registerTermsAndConditionsButton {
    return Intl.message(
      'terms and conditions',
      name: 'registerTermsAndConditionsButton',
      desc: 'localizable of Accept terms and conditions',
      args: [],
    );
  }

  /// `Sign up`
  String get registerButton {
    return Intl.message(
      'Sign up',
      name: 'registerButton',
      desc: 'localizable of Sign up',
      args: [],
    );
  }

  /// `Already have an account?`
  String get registerHaveAccountLabel {
    return Intl.message(
      'Already have an account?',
      name: 'registerHaveAccountLabel',
      desc: 'localizable of Already have an account?',
      args: [],
    );
  }

  /// `Login`
  String get registerHaveAccountButton {
    return Intl.message(
      'Login',
      name: 'registerHaveAccountButton',
      desc: 'localizable of Login',
      args: [],
    );
  }

  /// `Reset Password`
  String get forgotPasswordLabel {
    return Intl.message(
      'Reset Password',
      name: 'forgotPasswordLabel',
      desc: 'localizable of Reset Password',
      args: [],
    );
  }

  /// `Enter your email address to receive a verification code.`
  String get forgotPasswordDescriptionLabel {
    return Intl.message(
      'Enter your email address to receive a verification code.',
      name: 'forgotPasswordDescriptionLabel',
      desc:
          'localizable of Enter your email address to receive a verification code.',
      args: [],
    );
  }

  /// `Email`
  String get forgotPasswordEmailField {
    return Intl.message(
      'Email',
      name: 'forgotPasswordEmailField',
      desc: 'localizable of Email',
      args: [],
    );
  }

  /// `Send email`
  String get forgotPasswordButton {
    return Intl.message(
      'Send email',
      name: 'forgotPasswordButton',
      desc: 'localizable of Send email',
      args: [],
    );
  }

  /// `Validate code`
  String get validateCodeLabel {
    return Intl.message(
      'Validate code',
      name: 'validateCodeLabel',
      desc: 'localizable of Validate code',
      args: [],
    );
  }

  /// `Enter the 4-digit code sent to: {email}`
  String validateCodeDescriptionLabel(String email) {
    return Intl.message(
      'Enter the 4-digit code sent to: $email',
      name: 'validateCodeDescriptionLabel',
      desc:
          'localizable of Enter the 4-digit code sent to: example@buscame.com',
      args: [email],
    );
  }

  /// `Resend code`
  String get validateCodeResentCodeButton {
    return Intl.message(
      'Resend code',
      name: 'validateCodeResentCodeButton',
      desc: 'localizable of Resend code',
      args: [],
    );
  }

  /// `Validate code`
  String get validateCodeButton {
    return Intl.message(
      'Validate code',
      name: 'validateCodeButton',
      desc: 'localizable of Validate code',
      args: [],
    );
  }

  /// `New password`
  String get changePasswordLabel {
    return Intl.message(
      'New password',
      name: 'changePasswordLabel',
      desc: 'localizable of New password',
      args: [],
    );
  }

  /// `Enter your new password to make the change.`
  String get changePasswordDescriptionLabel {
    return Intl.message(
      'Enter your new password to make the change.',
      name: 'changePasswordDescriptionLabel',
      desc: 'localizable of Enter your new password to make the change.',
      args: [],
    );
  }

  /// `New password`
  String get changePasswordField {
    return Intl.message(
      'New password',
      name: 'changePasswordField',
      desc: 'localizable of New password',
      args: [],
    );
  }

  /// `Save`
  String get changePasswordButton {
    return Intl.message(
      'Save',
      name: 'changePasswordButton',
      desc: 'localizable of Save',
      args: [],
    );
  }

  /// `Your password needs:`
  String get securePasswordOptionTitle {
    return Intl.message(
      'Your password needs:',
      name: 'securePasswordOptionTitle',
      desc: 'localizable of Your password needs:',
      args: [],
    );
  }

  /// `Weak`
  String get securePasswordOptionWeak {
    return Intl.message(
      'Weak',
      name: 'securePasswordOptionWeak',
      desc: 'localizable of Weak',
      args: [],
    );
  }

  /// `8 minimum letters`
  String get securePasswordOptionMinLetter {
    return Intl.message(
      '8 minimum letters',
      name: 'securePasswordOptionMinLetter',
      desc: 'localizable of 8 minimum letters',
      args: [],
    );
  }

  /// `Numbers or symbols`
  String get securePasswordOptionNumberAndSymbol {
    return Intl.message(
      'Numbers or symbols',
      name: 'securePasswordOptionNumberAndSymbol',
      desc: 'localizable of Numbers or symbols',
      args: [],
    );
  }

  /// `uppercase and lowercase`
  String get securePasswordOptionUpperAndLowerCase {
    return Intl.message(
      'uppercase and lowercase',
      name: 'securePasswordOptionUpperAndLowerCase',
      desc: 'localizable of Uppercase and lowercase',
      args: [],
    );
  }

  /// `Hi`
  String get greetingUser {
    return Intl.message(
      'Hi',
      name: 'greetingUser',
      desc: 'localizable of user greetings on the home screen.',
      args: [],
    );
  }

  /// `The field is required`
  String get regexDisplayErrorEmpty {
    return Intl.message(
      'The field is required',
      name: 'regexDisplayErrorEmpty',
      desc: 'localizable error when not input a data',
      args: [],
    );
  }

  /// `Minimum {length} characters`
  String regexDisplayErrorMinLength(String lenght, Object length) {
    return Intl.message(
      'Minimum $length characters',
      name: 'regexDisplayErrorMinLength',
      desc: 'localizable error when you do not enter a minimum value',
      args: [lenght, length],
    );
  }

  /// `Maximum {length} characters`
  String regexDisplayErrorMaxLength(String lenght, Object length) {
    return Intl.message(
      'Maximum $length characters',
      name: 'regexDisplayErrorMaxLength',
      desc: 'localizable error when you exceed the maximum value',
      args: [lenght, length],
    );
  }

  /// `The alphabetic format is not valid`
  String get regexDisplayErrorFormatAlphabetical {
    return Intl.message(
      'The alphabetic format is not valid',
      name: 'regexDisplayErrorFormatAlphabetical',
      desc: 'localizable error of regex Alphabetical',
      args: [],
    );
  }

  /// `The alphanumeric format is not valid`
  String get regexDisplayErrorFormatAlphanumeric {
    return Intl.message(
      'The alphanumeric format is not valid',
      name: 'regexDisplayErrorFormatAlphanumeric',
      desc: 'localizable error of regex Alphanumeric',
      args: [],
    );
  }

  /// `The decimal number format is not valid`
  String get regexDisplayErrorFormatDecimal {
    return Intl.message(
      'The decimal number format is not valid',
      name: 'regexDisplayErrorFormatDecimal',
      desc: 'localizable error of regex Decimal',
      args: [],
    );
  }

  /// `The email format is not valid`
  String get regexDisplayErrorFormatEmail {
    return Intl.message(
      'The email format is not valid',
      name: 'regexDisplayErrorFormatEmail',
      desc: 'localizable error of regex Email',
      args: [],
    );
  }

  /// `The integer format is not valid`
  String get regexDisplayErrorFormatInteger {
    return Intl.message(
      'The integer format is not valid',
      name: 'regexDisplayErrorFormatInteger',
      desc: 'localizable error of regex Integer',
      args: [],
    );
  }

  /// `The password format is not valid`
  String get regexDisplayErrorFormatPassword {
    return Intl.message(
      'The password format is not valid',
      name: 'regexDisplayErrorFormatPassword',
      desc: 'localizable error of regexPassword',
      args: [],
    );
  }

  /// `The cell phone format is not valid`
  String get regexDisplayErrorFormatPhone {
    return Intl.message(
      'The cell phone format is not valid',
      name: 'regexDisplayErrorFormatPhone',
      desc: 'localizable error of regex Phone',
      args: [],
    );
  }

  /// `Home`
  String get homeLabel {
    return Intl.message(
      'Home',
      name: 'homeLabel',
      desc: 'localizable of home',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehiclesLabel {
    return Intl.message(
      'Vehicle',
      name: 'vehiclesLabel',
      desc: 'localizable of vehicle',
      args: [],
    );
  }

  /// `Settings`
  String get settingsLabel {
    return Intl.message(
      'Settings',
      name: 'settingsLabel',
      desc: 'localizable of settings',
      args: [],
    );
  }

  /// `Children`
  String get passengersLabel {
    return Intl.message(
      'Children',
      name: 'passengersLabel',
      desc: 'localizable of passengers',
      args: [],
    );
  }

  /// `Support`
  String get supportLabel {
    return Intl.message(
      'Support',
      name: 'supportLabel',
      desc: 'localizable of support',
      args: [],
    );
  }

  /// `For any questions, complaints, or concerns, you can contact us through the following means:`
  String get supportDescriptionLabel {
    return Intl.message(
      'For any questions, complaints, or concerns, you can contact us through the following means:',
      name: 'supportDescriptionLabel',
      desc: 'localizable of support description',
      args: [],
    );
  }

  /// `Frequently Asked Questions`
  String get frecuentQuestionsLabel {
    return Intl.message(
      'Frequently Asked Questions',
      name: 'frecuentQuestionsLabel',
      desc: 'localizable of frequent questions',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditionsLabel {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditionsLabel',
      desc: 'localizable of terms and conditions',
      args: [],
    );
  }

  /// `About Us`
  String get aboutUsLabel {
    return Intl.message(
      'About Us',
      name: 'aboutUsLabel',
      desc: 'localizable of about',
      args: [],
    );
  }

  /// `Do you like our app?`
  String get aboutUsReviewAppTitle {
    return Intl.message(
      'Do you like our app?',
      name: 'aboutUsReviewAppTitle',
      desc: 'localizable of about Review App Title',
      args: [],
    );
  }

  /// `If you enjoy using our app, we would love for you to leave us a review. This helps us improve and reach more people.`
  String get aboutUsReviewAppDescription {
    return Intl.message(
      'If you enjoy using our app, we would love for you to leave us a review. This helps us improve and reach more people.',
      name: 'aboutUsReviewAppDescription',
      desc: 'localizable of about Review App Description',
      args: [],
    );
  }

  /// `Leave a Review`
  String get aboutUsReviewAppButton {
    return Intl.message(
      'Leave a Review',
      name: 'aboutUsReviewAppButton',
      desc: 'localizable of about Review App Button',
      args: [],
    );
  }

  /// `App Version`
  String get aboutUsReviewAppVersionTitle {
    return Intl.message(
      'App Version',
      name: 'aboutUsReviewAppVersionTitle',
      desc: 'localizable of about',
      args: [],
    );
  }

  /// `Profile`
  String get profileTitle {
    return Intl.message(
      'Profile',
      name: 'profileTitle',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get profileSaveButton {
    return Intl.message(
      'Save',
      name: 'profileSaveButton',
      desc: 'localizable of Save',
      args: [],
    );
  }

  /// `First Names`
  String get profileNamesField {
    return Intl.message(
      'First Names',
      name: 'profileNamesField',
      desc: '',
      args: [],
    );
  }

  /// `Last Names`
  String get profileLastNamesField {
    return Intl.message(
      'Last Names',
      name: 'profileLastNamesField',
      desc: 'localizable of Last Names',
      args: [],
    );
  }

  /// `Email`
  String get profileEmailField {
    return Intl.message(
      'Email',
      name: 'profileEmailField',
      desc: 'localizable of Address',
      args: [],
    );
  }

  /// `Address`
  String get profileAddressField {
    return Intl.message(
      'Address',
      name: 'profileAddressField',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get profilePhoneNumberField {
    return Intl.message(
      'Phone Number',
      name: 'profilePhoneNumberField',
      desc: 'localizable of Phone Number',
      args: [],
    );
  }

  /// `Year of Birth`
  String get profileYearOfBirthField {
    return Intl.message(
      'Year of Birth',
      name: 'profileYearOfBirthField',
      desc: 'localizable of Year of Birth',
      args: [],
    );
  }

  /// `Gender`
  String get profileGenderField {
    return Intl.message(
      'Gender',
      name: 'profileGenderField',
      desc: 'localizable of Gender',
      args: [],
    );
  }

  /// `Changes Detected`
  String get profileModalExitTitle {
    return Intl.message(
      'Changes Detected',
      name: 'profileModalExitTitle',
      desc: 'localizable of Changes Detected',
      args: [],
    );
  }

  /// `Changes have been detected. Do you want to save them or discard them?`
  String get profileModalExitSubtitle {
    return Intl.message(
      'Changes have been detected. Do you want to save them or discard them?',
      name: 'profileModalExitSubtitle',
      desc:
          'localizable of Changes have been detected. Do you want to save them or discard them?',
      args: [],
    );
  }

  /// `Save`
  String get profileModalExitPrimaryAction {
    return Intl.message(
      'Save',
      name: 'profileModalExitPrimaryAction',
      desc: 'localizable of Save',
      args: [],
    );
  }

  /// `Discard`
  String get profileModalExitSecondaryAction {
    return Intl.message(
      'Discard',
      name: 'profileModalExitSecondaryAction',
      desc: 'localizable of Discard',
      args: [],
    );
  }

  /// `Gallery`
  String get profileModalChangePhotoLeftOption {
    return Intl.message(
      'Gallery',
      name: 'profileModalChangePhotoLeftOption',
      desc: 'localizable of Gallery',
      args: [],
    );
  }

  /// `Take Photo`
  String get profileModalChangePhotoRightOption {
    return Intl.message(
      'Take Photo',
      name: 'profileModalChangePhotoRightOption',
      desc: 'localizable of Take Photo',
      args: [],
    );
  }

  /// `Update`
  String get profileModalChangePhotoPrimaryAction {
    return Intl.message(
      'Update',
      name: 'profileModalChangePhotoPrimaryAction',
      desc: 'localizable of Update',
      args: [],
    );
  }

  /// `Cancel`
  String get profileModalChangePhotoSecondaryAction {
    return Intl.message(
      'Cancel',
      name: 'profileModalChangePhotoSecondaryAction',
      desc: 'localizable of Cancel',
      args: [],
    );
  }

  /// `Logout`
  String get menuOptionLogoutLabel {
    return Intl.message(
      'Logout',
      name: 'menuOptionLogoutLabel',
      desc: 'localizable of Dak Mode Sitwch',
      args: [],
    );
  }

  /// `Dark Mode`
  String get menuOptionDarkModeLabel {
    return Intl.message(
      'Dark Mode',
      name: 'menuOptionDarkModeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get menuOptionLogoutModalPrimaryButton {
    return Intl.message(
      'Cancel',
      name: 'menuOptionLogoutModalPrimaryButton',
      desc: 'localizable of Logout Primary Button',
      args: [],
    );
  }

  /// `Logout`
  String get menuOptionLogoutModalSecondayButton {
    return Intl.message(
      'Logout',
      name: 'menuOptionLogoutModalSecondayButton',
      desc: 'localizable of Logout Modal Secondary Button',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get menuOptionLogoutModalDesciption {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'menuOptionLogoutModalDesciption',
      desc: 'localizable of Logout Modal Description',
      args: [],
    );
  }

  /// `Logout`
  String get menuOptionLogoutModalTitle {
    return Intl.message(
      'Logout',
      name: 'menuOptionLogoutModalTitle',
      desc: 'localizable of Logout Modal Title',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
