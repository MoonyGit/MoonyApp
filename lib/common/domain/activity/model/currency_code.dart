import 'package:dartz/dartz.dart';
import 'package:moony_app/common/base/domain/model/value_object.dart';

/// CurrencyCode failure
class CurrencyCodeFailure extends Failure {}

/// CurrencyCode value object class
class CurrencyCode
    extends ValueObject<CurrencyCodeFailure, String> {
  const CurrencyCode._(this.value);

  /// Factory constructor
  factory CurrencyCode({required String input}) {
    if (_simpleCurrencySymbols[input] == null) {
      return CurrencyCode._(
        left(
          CurrencyCodeFailure(),
        ),
      );
    } else {
      return CurrencyCode._(right(input));
    }
  }

  @override
  final Either<CurrencyCodeFailure, String> value;
}

/// Copied form intl package to check currency code existence
final Map<String, String> _simpleCurrencySymbols = {
  'AFN': 'Af.',
  'TOP': r'T$',
  'MGA': 'Ar',
  'THB': '\u0e3f',
  'PAB': 'B/.',
  'ETB': 'Birr',
  'VEF': 'Bs',
  'BOB': 'Bs',
  'GHS': 'GHS',
  'CRC': '\u20a1',
  'NIO': r'C$',
  'GMD': 'GMD',
  'MKD': 'din',
  'BHD': 'din',
  'DZD': 'din',
  'IQD': 'din',
  'JOD': 'din',
  'KWD': 'din',
  'LYD': 'din',
  'RSD': 'din',
  'TND': 'din',
  'AED': 'dh',
  'MAD': 'dh',
  'STD': 'Db',
  'BSD': r'$',
  'FJD': r'$',
  'GYD': r'$',
  'KYD': r'$',
  'LRD': r'$',
  'SBD': r'$',
  'SRD': r'$',
  'AUD': r'$',
  'BBD': r'$',
  'BMD': r'$',
  'BND': r'$',
  'BZD': r'$',
  'CAD': r'$',
  'HKD': r'$',
  'JMD': r'$',
  'NAD': r'$',
  'NZD': r'$',
  'SGD': r'$',
  'TTD': r'$',
  'TWD': r'NT$',
  'USD': r'$',
  'XCD': r'$',
  'VND': '\u20ab',
  'AMD': 'Dram',
  'CVE': 'CVE',
  'EUR': '\u20ac',
  'AWG': 'Afl.',
  'HUF': 'Ft',
  'BIF': 'FBu',
  'CDF': 'FrCD',
  'CHF': 'CHF',
  'DJF': 'Fdj',
  'GNF': 'FG',
  'RWF': 'RF',
  'XOF': 'CFA',
  'XPF': 'FCFP',
  'KMF': 'CF',
  'XAF': 'FCFA',
  'HTG': 'HTG',
  'PYG': 'Gs',
  'UAH': '\u20b4',
  'PGK': 'PGK',
  'LAK': '\u20ad',
  'CZK': 'K\u010d',
  'SEK': 'kr',
  'ISK': 'kr',
  'DKK': 'kr',
  'NOK': 'kr',
  'HRK': 'kn',
  'MWK': 'MWK',
  'ZMK': 'ZWK',
  'AOA': 'Kz',
  'MMK': 'K',
  'GEL': 'GEL',
  'LVL': 'Ls',
  'ALL': 'Lek',
  'HNL': 'L',
  'SLL': 'SLL',
  'MDL': 'MDL',
  'RON': 'RON',
  'BGN': 'lev',
  'SZL': 'SZL',
  'TRY': 'TL',
  'LTL': 'Lt',
  'LSL': 'LSL',
  'AZN': 'man.',
  'BAM': 'KM',
  'MZN': 'MTn',
  'NGN': '\u20a6',
  'ERN': 'Nfk',
  'BTN': 'Nu.',
  'MRO': 'MRO',
  'MOP': 'MOP',
  'CUP': r'$',
  'CUC': r'$',
  'ARS': r'$',
  'CLF': 'UF',
  'CLP': r'$',
  'COP': r'$',
  'DOP': r'$',
  'MXN': r'$',
  'PHP': '\u20b1',
  'UYU': r'$',
  'FKP': '£',
  'GIP': '£',
  'SHP': '£',
  'EGP': 'E£',
  'LBP': 'L£',
  'SDG': 'SDG',
  'SSP': 'SSP',
  'GBP': '£',
  'SYP': '£',
  'BWP': 'P',
  'GTQ': 'Q',
  'ZAR': 'R',
  'BRL': r'R$',
  'OMR': 'Rial',
  'QAR': 'Rial',
  'YER': 'Rial',
  'IRR': 'Rial',
  'KHR': 'Riel',
  'MYR': 'RM',
  'SAR': 'Riyal',
  'BYR': 'BYR',
  'RUB': 'руб.',
  'MUR': 'Rs',
  'SCR': 'SCR',
  'LKR': 'Rs',
  'NPR': 'Rs',
  'INR': '\u20b9',
  'PKR': 'Rs',
  'IDR': 'Rp',
  'ILS': '\u20aa',
  'KES': 'Ksh',
  'SOS': 'SOS',
  'TZS': 'TSh',
  'UGX': 'UGX',
  'PEN': 'S/.',
  'KGS': 'KGS',
  'UZS': 'so\u02bcm',
  'TJS': 'Som',
  'BDT': '\u09f3',
  'WST': 'WST',
  'KZT': '\u20b8',
  'MNT': '\u20ae',
  'VUV': 'VUV',
  'KPW': '\u20a9',
  'KRW': '\u20a9',
  'JPY': '¥',
  'CNY': '¥',
  'PLN': 'z\u0142',
  'MVR': 'Rf',
  'NLG': 'NAf',
  'ZMW': 'ZK',
  'ANG': 'ƒ',
  'TMT': 'TMT',
};