// ignore_for_file: public_member_api_docs

import 'package:moony_app/common/domain/user/model/birthdate.dart';

/// All zodiac sign
enum ZodiacSign {
  aries,
  taurus,
  gemini,
  cancer,
  leo,
  virgo,
  libra,
  scorpius,
  sagittarius,
  capricornus,
  aquarius,
  pisces
}

/// extension for enum ZodiacSign
extension ZodiacSignMapper on ZodiacSign {
  String getImage() {
    switch (this) {
      case ZodiacSign.aries:
        return "\u2648";
      case ZodiacSign.taurus:
        return "\u2649";
      case ZodiacSign.gemini:
        return "\u264A";
      case ZodiacSign.cancer:
        return "\u264B";
      case ZodiacSign.leo:
        return "\u264C";
      case ZodiacSign.virgo:
        return "\u264D";
      case ZodiacSign.libra:
        return "\u264E";
      case ZodiacSign.scorpius:
        return "\u264F";
      case ZodiacSign.sagittarius:
        return "\u2650";
      case ZodiacSign.capricornus:
        return "\u2651";
      case ZodiacSign.aquarius:
        return "\u2652";
      case ZodiacSign.pisces:
        return "\u2653";
    }
  }

  String getName() => toString().split(".")[1];

  static ZodiacSign fromBirthdate({required Birthdate birthdate}) =>
      ZodiacSign.aries;
}
