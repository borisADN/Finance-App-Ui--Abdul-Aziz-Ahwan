import 'package:application/constants/color_constants.dart';
import 'package:flutter/material.dart';

class TransactionModel {
  final String name;
  final String type;
  final Color colorType;
  final String signType;
  final String amount;
  final String information;
  final String recipient;
  final String date;
  final String card;

  TransactionModel({
    required this.name,
    required this.type,
    required this.colorType,
    required this.signType,
    required this.amount,
    required this.information,
    required this.recipient,
    required this.date,
    required this.card,
  });

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      name: map['name'] as String,
      type: map['type'] as String,
      colorType: map['colorType'] as Color,
      signType: map['signType'] as String,
      amount: map['amount'] as String,
      information: map['information'] as String,
      recipient: map['recipient'] as String,
      date: map['date'] as String,
      card: map['card'] as String,
    );
  }
}

final List<TransactionModel> transactions = transactionData
    .map<TransactionModel>((item) => TransactionModel.fromMap(item))
    .toList();

final List<Map<String, dynamic>> transactionData = [
  {
    "name": "Sortant",
    "type": 'assets/icons/outcome_icon.svg',
    "colorType": kOrangeColor,
    "signType": "-",
    "amount": "200000",
    "information": "Transféré a",
    "recipient": "Lionel Messi",
    "date": "12 Feb 2025",
    "card": "assets/images/mastercard_logo.png",
  },
  {
    "name": "Entrant",
    "type": 'assets/icons/income_icon.svg',
    "colorType": kGreenColor,
    "signType": "+",
    "amount": "352000",
    "information": "Reçu de ",
    "recipient": "Lamine Yamal",
    "date": "10 Feb 2025",
    "card": "assets/images/jenius_logo_blue.png",
  },
  {
    "name": "Sortant",
    "type": 'assets/icons/outcome_icon.svg',
    "colorType": kOrangeColor,
    "signType": "-",
    "amount": "53265",
    "information": "Abonnement",
    "recipient": "Canal +",
    "date": "09 Feb 2025",
    "card": "assets/images/mastercard_logo.png",
  },
];
