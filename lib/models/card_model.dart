import 'package:application/constants/color_constants.dart';
import 'package:flutter/material.dart';

class CardModel {
  final String name;
  final String type;
  final String balance;
  final String valid;
  final String moreIcon;
  final String cardBackground;
  final Color bgColor;
  final Color firstColor;
  final Color secondColor;

  CardModel({
    required this.name,
    required this.type,
    required this.balance,
    required this.valid,
    required this.moreIcon,
    required this.cardBackground,
    required this.bgColor,
    required this.firstColor,
    required this.secondColor,
  });

  factory CardModel.fromMap(Map<String, dynamic> map) {
    return CardModel(
      name: map['name'] as String,
      type: map['type'] as String,
      balance: map['balance'] as String,
      valid: map['valid'] as String,
      moreIcon: map['moreIcon'] as String,
      cardBackground: map['cardBackground'] as String,
      bgColor: map['bgColor'] as Color,
      firstColor: map['firstColor'] as Color,
      secondColor: map['secondColor'] as Color,
    );
  }
}

final List<CardModel> cards = cardData
    .map<CardModel>((item) => CardModel.fromMap(item))
    .toList();

final List<Map<String, dynamic>> cardData = [
  {
    "name": "Boris",
    "type": "assets/images/mastercard_logo.png",
    "balance": "200800 FCFA",
    "valid": "Nov 2030",
    "moreIcon": 'assets/icons/more_icon_grey.svg',
    "cardBackground": 'assets/svg/mastercard_bg.svg',
    "bgColor": kMasterCardColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor,
  },
  {
    "name": "Boris",
    "type": "assets/images/jenius_logo.png",
    "balance": "305580 FCFA",
    "valid": "Nov 2030",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground": 'assets/svg/jenius_bg.svg',
    "bgColor": kJeniusCardColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor,
  },
  {
    "name": "Boris",
    "type": "assets/images/mastercard_logo.png",
    "balance": "635840 FCFA",
    "valid": "Nov 2030",
    "moreIcon": 'assets/icons/more_icon_grey.svg',
    "cardBackground": 'assets/svg/mastercard_bg.svg',
    "bgColor": kMasterCardColor,
    "firstColor": kGreyColor,
    "secondColor": kBlackColor,
  },
  {
    "name": "Boris",
    "type": "assets/images/jenius_logo.png",
    "balance": "785100 FCFA",
    "valid": "11/30",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground": 'assets/svg/jenius_bg.svg',
    "bgColor": kJeniusCardColor,
    "firstColor": kWhiteColor,
    "secondColor": kWhiteColor,
  },
];
