class WalletModel {
  final String name;
  final String wallet;
  final String walletLogo;
  final String walletNumber;

  WalletModel({
    required this.name,
    required this.wallet,
    required this.walletLogo,
    required this.walletNumber,
  });

  factory WalletModel.fromMap(Map<String, dynamic> map) {
    return WalletModel(
      name: map['name'] as String,
      wallet: map['wallet'] as String,
      walletLogo: map['walletLogo'] as String,
      walletNumber: map['walletNumber'] as String,
    );
  }
}

final List<WalletModel> wallets = walletData
    .map<WalletModel>((item) => WalletModel.fromMap(item))
    .toList();

final List<Map<String, dynamic>> walletData = [
  {
    "name": "Prambors",
    "wallet": "Gopay",
    "walletLogo": 'assets/images/gopay_logo.png',
    "walletNumber": '+62*** **** 1932',
  },
  {
    "name": "Jenny",
    "wallet": "Ovo",
    "walletLogo": 'assets/images/ovo_logo.png',
    "walletNumber": '+62*** **** 2245',
  },
  {
    "name": "Jenny",
    "wallet": "Gopay",
    "walletLogo": 'assets/images/gopay_logo.png',
    "walletNumber": '+62*** **** 2245',
  },
  {
    "name": "Prambors",
    "wallet": "Dana",
    "walletLogo": 'assets/images/dana_logo.png',
    "walletNumber": '+62*** **** 1932',
  },
];
