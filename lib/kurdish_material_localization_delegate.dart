import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

class _KurdishMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _KurdishMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    const String localeName = 'ku';

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: kuLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(kuDateSymbols),
    );
    return SynchronousFuture<MaterialLocalizations>(
      KurdishMaterialLocalizations(
        fullYearFormat: intl.DateFormat('y', localeName),
        shortDateFormat: intl.DateFormat('MM/DD/YY', localeName),
        compactDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        shortMonthDayFormat: intl.DateFormat('MM/DD', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'ar' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'ar'),
      ),
    );
  }

  @override
  bool shouldReload(_KurdishMaterialLocalizationsDelegate old) => false;
}

class KurdishMaterialLocalizations extends GlobalMaterialLocalizations {
  const KurdishMaterialLocalizations({
    String localeName = 'ku',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : super(
            localeName: localeName,
            shortDateFormat: shortDateFormat,
            compactDateFormat: compactDateFormat,
            shortMonthDayFormat: shortMonthDayFormat,
            fullYearFormat: fullYearFormat,
            mediumDateFormat: mediumDateFormat,
            longDateFormat: longDateFormat,
            yearMonthFormat: yearMonthFormat,
            decimalFormat: decimalFormat,
            twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat);
  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _KurdishMaterialLocalizationsDelegate();

  @override
  String get aboutListTileTitleRaw => 'دەربارە \$applicationName';

  @override
  String get alertDialogLabel => 'ئاگەدارکرن';

  @override
  String get anteMeridiemAbbreviation => 'ب.ن';

  @override
  String get backButtonTooltip => 'زڤرین';

  @override
  String get calendarModeButtonLabel => 'گهوڕین ژبو سالنامێ';

  @override
  String get cancelButtonLabel => 'هەلوەشاندن';

  @override
  String get closeButtonLabel => 'گرتن';

  @override
  String get closeButtonTooltip => 'گرتن';

  @override
  String get collapsedIconTapHint => 'فرەهکرن';

  @override
  String get continueButtonLabel => 'بەردەوام بە';

  @override
  String get copyButtonLabel => 'کوپی';

  @override
  String get cutButtonLabel => 'بڕین';

  @override
  String get dateHelpText => 'mm/dd/yyyy';

  @override
  String get dateInputLabel => 'بەرواری بنڤێسە';

  @override
  String get dateOutOfRangeLabel => 'دەرڤەی مەودایە';

  @override
  String get datePickerHelpText => 'بەرواری دیار بکە';

  @override
  String get dateRangeEndDateSemanticLabelRaw => 'بەروارێ دوماهیێ \$fullDate';

  @override
  String get dateRangeEndLabel => 'بەروارێ دوماهیێ';

  @override
  String get dateRangePickerHelpText => 'دەستنیشانکرنا مەودای';

  @override
  String get dateRangeStartDateSemanticLabelRaw =>
      'بەروارێ دەستپێکرنێ \$fullDate';

  @override
  String get dateRangeStartLabel => 'بەروارێ دەستپێکرنێ';

  @override
  String get dateSeparator => '/';

  @override
  String get deleteButtonTooltip => 'ژێبرن';

  @override
  String get dialModeButtonLabel => 'گوهارتن ژبو هەلبژارتنا ساناهی';

  @override
  String get dialogLabel => 'دیالوگ';

  @override
  String get drawerLabel => 'لیستا ڕێنیشاندەر';

  @override
  String get expandedIconTapHint => 'بچیک کردن';

  @override
  String get hideAccountsLabel => 'ڤەشارتنا هژمارا';

  @override
  String get inputDateModeButtonLabel => 'گهورین ژبو نڤێسینێ';

  @override
  String get inputTimeModeButtonLabel => 'گهورین ژبو نڤێسینێ';

  @override
  String get invalidDateFormatLabel => 'فورمات یا خەلەتە.';

  @override
  String get invalidDateRangeLabel => 'مەودا نەیێ دروستە';

  @override
  String get invalidTimeLabel => 'دەمی دروس بنڤێسە';

  @override
  String get licensesPackageDetailTextOne => '١ مولەت';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount مولەت';

  @override
  String get licensesPackageDetailTextZero => 'مولەت نینە';

  @override
  String get licensesPageTitle => 'هەمی مولەت';

  @override
  String get modalBarrierDismissLabel => 'گرتن';

  @override
  String get moreButtonTooltip => 'پتر';

  @override
  String get nextMonthTooltip => 'هەیڤا بهێت';

  @override
  String get nextPageTooltip => 'لاپەرێ بهێت';

  @override
  String get okButtonLabel => 'تەمام';

  @override
  String get openAppDrawerTooltip => 'ڤەکرنا لیستا ڕێنیشاندەر';

  @override
  String get pageRowsInfoTitleRaw => '\$firstRow–\$lastRow ل \$rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      '\$firstRow–\$lastRow هەتا \$rowCount';

  @override
  String get pasteButtonLabel => 'پەیست';

  @override
  String get popupMenuLabel => 'لیستا دەردکەڤیت';

  @override
  String get postMeridiemAbbreviation => 'پ.ن';

  @override
  String get previousMonthTooltip => 'هەیڤا بەری هینگێ';

  @override
  String get previousPageTooltip => 'لاپەرێ بەری هینگێ';

  @override
  String get refreshIndicatorSemanticLabel => 'نویکردن';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  List<String> get narrowWeekdays => ['ئ', 'د', 'س', 'چ', 'پ', 'ئە', 'ش'];

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => '١ پیت یامای';

  @override
  String get remainingTextFieldCharacterCountOther =>
      '\$remainingCount پیت یێن ماین';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero => 'چ پیت نەماینە';

  @override
  String get reorderItemDown => 'ببە خارێ';

  @override
  String get reorderItemLeft => 'ببە لایێ چەپێ';

  @override
  String get reorderItemRight => 'ببە لایێ راستێ';

  @override
  String get reorderItemToEnd => 'ببە دوماهیێ';

  @override
  String get reorderItemToStart => 'ببە دەستپێکێ';

  @override
  String get reorderItemUp => 'ببە سەری';

  @override
  String get rowsPerPageTitle => 'رێز ژبو هەر پەرەکی:';

  @override
  String get saveButtonLabel => 'هەلگرتن';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.tall;

  @override
  String get searchFieldLabel => 'لێگەریان';

  @override
  String get selectAllButtonLabel => 'هەمیێ هەلبژێرە';

  @override
  String get selectYearSemanticsLabel => 'سالێ هەلبژێرە';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => '١ یا هاتیە لبژارتن';

  @override
  String get selectedRowCountTitleOther =>
      '\$selectedRowCount هاتینە هەلبژارتن';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => 'چ نەهاتینە هەلبژارتن';

  @override
  String get showAccountsLabel => 'هژمارا دیار بکە';

  @override
  String get showMenuTooltip => 'مێنیویێ دیار بکە';

  @override
  String get signedInLabel => 'چونا ژورڤە';

  @override
  String get tabLabelRaw => 'خشتێ دەمی \$tabIndex ژ \$tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerDialHelpText => 'دەمی هەلبژێرە';

  @override
  String get timePickerHourLabel => 'دەمژمێر';

  @override
  String get timePickerHourModeAnnouncement => 'دەمژـێرێ هەلبژێرە';

  @override
  String get timePickerInputHelpText => 'دەمی بنڤێسە';

  @override
  String get timePickerMinuteLabel => 'خولەک';

  @override
  String get timePickerMinuteModeAnnouncement => 'خولەکێ هەلبژێرە';

  @override
  String get unspecifiedDate => 'بەروار';

  @override
  String get unspecifiedDateRange => 'مەودانی رێکەفتی';

  @override
  String get viewLicensesButtonLabel => 'دیارکرنا مولەتا';

  @override
  String get firstPageTooltip => 'لاپەرێ بەری دەستپێکێ';

  @override
  String get lastPageTooltip => 'لاپەرێ دوماهیێ';

  @override
  String get keyboardKeyAlt => throw UnimplementedError();

  @override
  String get keyboardKeyAltGraph => throw UnimplementedError();

  @override
  String get keyboardKeyBackspace => throw UnimplementedError();

  @override
  String get keyboardKeyCapsLock => throw UnimplementedError();

  @override
  String get keyboardKeyChannelDown => throw UnimplementedError();

  @override
  String get keyboardKeyChannelUp => throw UnimplementedError();

  @override
  String get keyboardKeyControl => throw UnimplementedError();

  @override
  String get keyboardKeyDelete => throw UnimplementedError();

  @override
  String get keyboardKeyEisu => throw UnimplementedError();

  @override
  String get keyboardKeyEject => throw UnimplementedError();

  @override
  String get keyboardKeyEnd => throw UnimplementedError();

  @override
  String get keyboardKeyEscape => throw UnimplementedError();

  @override
  String get keyboardKeyFn => throw UnimplementedError();

  @override
  String get keyboardKeyHangulMode => throw UnimplementedError();

  @override
  String get keyboardKeyHanjaMode => throw UnimplementedError();

  @override
  String get keyboardKeyHankaku => throw UnimplementedError();

  @override
  String get keyboardKeyHiragana => throw UnimplementedError();

  @override
  String get keyboardKeyHiraganaKatakana => throw UnimplementedError();

  @override
  String get keyboardKeyHome => throw UnimplementedError();

  @override
  String get keyboardKeyInsert => throw UnimplementedError();

  @override
  String get keyboardKeyKanaMode => throw UnimplementedError();

  @override
  String get keyboardKeyKanjiMode => throw UnimplementedError();

  @override
  String get keyboardKeyKatakana => throw UnimplementedError();

  @override
  String get keyboardKeyMeta => throw UnimplementedError();

  @override
  String get keyboardKeyMetaMacOs => throw UnimplementedError();

  @override
  String get keyboardKeyMetaWindows => throw UnimplementedError();

  @override
  String get keyboardKeyNumLock => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad0 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad1 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad2 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad3 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad4 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad5 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad6 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad7 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad8 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpad9 => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadAdd => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadComma => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadDecimal => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadDivide => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadEnter => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadEqual => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadMultiply => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadParenLeft => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadParenRight => throw UnimplementedError();

  @override
  String get keyboardKeyNumpadSubtract => throw UnimplementedError();

  @override
  String get keyboardKeyPageDown => throw UnimplementedError();

  @override
  String get keyboardKeyPageUp => throw UnimplementedError();

  @override
  String get keyboardKeyPower => throw UnimplementedError();

  @override
  String get keyboardKeyPowerOff => throw UnimplementedError();

  @override
  String get keyboardKeyPrintScreen => throw UnimplementedError();

  @override
  String get keyboardKeyRomaji => throw UnimplementedError();

  @override
  String get keyboardKeyScrollLock => throw UnimplementedError();

  @override
  String get keyboardKeySelect => throw UnimplementedError();

  @override
  String get keyboardKeySpace => throw UnimplementedError();

  @override
  String get keyboardKeyZenkaku => throw UnimplementedError();

  @override
  String get keyboardKeyZenkakuHankaku => throw UnimplementedError();
}

const kuDateSymbols = {
  'NAME': 'ku',
  'ERAS': ['ب.ز', 'ز'],
  'ERANAMES': ['بەری زاینی', 'زاینی'],
  'NARROWMONTHS': [
    'ک.ئ',
    'ش',
    'ئ',
    'ن',
    'گ',
    'خ',
    'تە',
    'تی',
    'ئە',
    'چ.ئ',
    'چ.د',
    'ک.ئ'
  ],
  'STANDALONENARROWMONTHS': [
    'ک.ئ',
    'ش',
    'ئ',
    'ن',
    'گ',
    'خ',
    'تە',
    'تی',
    'ئە',
    'چ.ئ',
    'چ.د',
    'ک.ئ'
  ],
  'MONTHS': [
    'کانینا دووێ',
    'شوبات',
    'ئادار',
    'نیسان',
    'گولان',
    'خزیران',
    'تیرمەهـ',
    'تەباخ',
    'ئەیلوول',
    'چریا ئێکێ',
    'چریا دووێ',
    'کانینا ئێکێ',
  ],
  'STANDALONEMONTHS': [
    'کانینا دووێ',
    'شوبات',
    'ئادار',
    'نیسان',
    'گولان',
    'خزیران',
    'تیرمەهـ',
    'تەباخ',
    'ئەیلوول',
    'چریا ئێکێ',
    'چریا دووێ',
    'کانینا ئێکێ',
  ],
  'SHORTMONTHS': [
    'کانینا دووێ',
    'شوبات',
    'ئادار',
    'نیسان',
    'گولان',
    'خزیران',
    'تیرمەهـ',
    'تەباخ',
    'ئەیلوول',
    'چریا ئێکێ',
    'چریا دووێ',
    'کانینا ئێکێ',
  ],
  'STANDALONESHORTMONTHS': [
    'کانینا دووێ',
    'شوبات',
    'ئادار',
    'نیسان',
    'گولان',
    'خزیران',
    'تیرمەهـ',
    'تەباخ',
    'ئەیلوول',
    'چریا ئێکێ',
    'چریا دووێ',
    'کانینا ئێکێ',
  ],
  'WEEKDAYS': [
    'ئێك شه‌مب',
    'دووشه‌مب',
    'سێ شه‌مب',
    'چارشه‌مب',
    'پێنچ شه‌مب',
    'ئەینی',
    'شه‌مبی'
  ],
  'STANDALONEWEEKDAYS': [
    'ئێك شه‌مب',
    'دووشه‌مب',
    'سێ شه‌مب',
    'چارشه‌مب',
    'پێنچ شه‌مب',
    'ئەینی',
    'شه‌مبی'
  ],
  'SHORTWEEKDAYS': [
    'ئێك شه‌مب',
    'دووشه‌مب',
    'سێ شه‌مب',
    'چارشه‌مب',
    'پێنچ شه‌مب',
    'ئەینی',
    'شه‌مبی'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'ئێك شه‌مب',
    'دووشه‌مب',
    'سێ شه‌مب',
    'چارشه‌مب',
    'پێنچ شه‌مب',
    'ئەینی',
    'شه‌مبی'
  ],
  'NARROWWEEKDAYS': ['ئ', 'د', 'س', 'چ', 'پ', 'ئە', 'ش'],
  'STANDALONENARROWWEEKDAYS': ['ئ', 'د', 'س', 'چ', 'پ', 'ئە', 'ش'],
  'SHORTQUARTERS': ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  'QUARTERS': ['چارێکا ئێکێ', 'چارێکا دووێ', 'چارێکا سیێ', 'چارێکا چارێ'],
  'AMPMS': ['ب.ن', 'پ.ن'],
  'DATEFORMATS': [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  'TIMEFORMATS': [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '٠',
  'FIRSTDAYOFWEEK': 5,
  'WEEKENDRANGE': [4, 5],
  'FIRSTWEEKCUTOFFDAY': 3
};
const kuLocaleDatePatterns = {
  'd': 'd', // DAY
  'E': 'ccc', // ABBR_WEEKDAY
  'EEEE': 'cccc', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'L', // NUM_MONTH
  'Md': 'd/‏M', // NUM_MONTH_DAY
  'MEd': 'EEE، d/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M‏/y', // YEAR_NUM_MONTH
  'yMd': 'd‏/M‏/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d/‏M/‏y', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'MMM y', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE، d MMM y', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'MMMM y', // YEAR_MONTH
  'yMMMMd': 'd MMMM y', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE، d MMMM y', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y', // YEAR_QUARTER
  'H': 'HH', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'h a', // HOUR
  'jm': 'h:mm a', // HOUR_MINUTE
  'jms': 'h:mm:ss a', // HOUR_MINUTE_SECOND
  'jmv': 'h:mm a v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'h:mm a z', // HOUR_MINUTETZ
  'jz': 'h a z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ' // ABBR_UTC_TZ
};
