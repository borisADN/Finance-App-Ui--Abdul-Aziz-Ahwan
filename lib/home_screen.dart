import 'package:application/constants/color_constants.dart';
import 'package:application/custom_icons/flutter_custom_icon.dart';
import 'package:application/models/card_model.dart';
import 'package:application/models/transaction_model.dart';
import 'package:application/models/wallet_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(MyFlutterApp.navigation_drawer, color: kBlackColor),
          onPressed: () {},
          padding: const EdgeInsets.only(left: 8),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Container(
          height: 56,
          margin: const EdgeInsets.only(left: 16, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              colors: kGradientSlideButton,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.mirror,
              stops: [0.0, 1.0],
            ),
          ),
          child: ConfirmationSlider(
            onConfirmation: () {},
            height: 56,
            width: MediaQuery.of(context).size.width - 32,
            backgroundColor: Colors.transparent,
            shadow: BoxShadow(color: Colors.transparent),
            foregroundColor: kWhiteColor,
            foregroundShape: BorderRadius.circular(8),
            sliderButtonContent: Icon(MyFlutterApp.slide_icon),
            iconColor: kBlueColor,
            text: 'Glisser pour payer >>>',
            textStyle: TextStyle(
              color: kWhiteColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 8, bottom: 16),
            child: Text(
              "Bonjour, Boris!",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Cards
          Container(
            height: 175,
            padding: const EdgeInsets.only(left: 16, right: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  height: 175,
                  width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: cards[index].bgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x10000000),
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 16,
                        top: 12,
                        child: Image.asset(
                          cards[index].type,
                          height: 22,
                          width: 33,
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 12,
                        child: SvgPicture.asset(cards[index].cardBackground),
                      ),
                      Positioned(
                        top: 14,
                        right: 12,
                        child: Text(
                          cards[index].name,
                          style: TextStyle(
                            color: cards[index].firstColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 63,
                        left: 16,
                        child: Text(
                          'Solde',
                          style: TextStyle(
                            color: cards[index].firstColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 81,
                        child: Text(
                          cards[index].balance,
                          style: TextStyle(
                            color: cards[index].secondColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 16,
                        child: Text(
                          'Validité',
                          style: TextStyle(
                            color: cards[index].firstColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 12,
                        left: 16,
                        child: Text(
                          cards[index].valid,
                          style: TextStyle(
                            color: cards[index].secondColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 8,
                        bottom: 8,
                        child: SvgPicture.asset(
                          cards[index].moreIcon,
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Recent
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              top: 32,
              bottom: 16,
              right: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Récents",
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Voir Tout",
                  style: TextStyle(
                    color: kBlueColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          // Transactions
          SizedBox(
            height: 190,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16, right: 8),
              itemCount: transactions.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 190,
                  width: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x04000000),
                        blurRadius: 10,
                        spreadRadius: 10,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 16,
                        left: 16,
                        height: 24,
                        width: 24,
                        child: SvgPicture.asset(transactions[index].type),
                      ),
                      Positioned(
                        right: 8,
                        top: 8,
                        child: SvgPicture.asset('assets/svg/mastercard_bg.svg'),
                      ),
                      Positioned(
                        top: 16,
                        right: 16,
                        child: Text(
                          transactions[index].name,
                          style: TextStyle(
                            color: transactions[index].colorType,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 64,
                        left: 16,
                        child: Text(
                          '${transactions[index].signType} ${transactions[index].amount}',
                          style: TextStyle(
                            color: transactions[index].colorType,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 106,
                        child: Text(
                          transactions[index].information,
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 48,
                        child: Text(
                          transactions[index].recipient,
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 22,
                        child: Text(
                          transactions[index].date,
                          style: TextStyle(
                            color: kGreyColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 14,
                        bottom: 16,

                        child: Image.asset(
                          transactions[index].card,
                          height: 22,
                          width: 33,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // Recharges
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 8, bottom: 16),
            child: Text(
              "Recharges",
              style: TextStyle(
                color: kBlackColor,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Cards
          SizedBox(
            height: 304,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16, right: 16),
              itemCount: wallets.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 8),
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x04000000),
                        blurRadius: 10,
                        spreadRadius: 10,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 12),
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWhiteGreyColor,
                              image: DecorationImage(
                                image: AssetImage(wallets[index].walletLogo),
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                wallets[index].name,
                                style: TextStyle(
                                  color: kBlackColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                wallets[index].wallet,
                                style: TextStyle(
                                  color: kGreyColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            wallets[index].walletNumber,
                            style: TextStyle(
                              color: kGreyColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 16),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
