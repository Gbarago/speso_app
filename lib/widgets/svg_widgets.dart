import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWdgets {
  static const String settings = 'assets/svg/settings.svg';
  static const String topUp = 'assets/svg/wallet_add.svg';
  static const String withdraw = 'assets/svg/card-send.svg';
  static const String receive = 'assets/svg/receive.svg';
  static const String transactions = 'assets/svg/clock.svg';
  //
  // Quick Srvices Card svg items
  static const String airtime = 'assets/svg/airtime.svg';
  static const String payBills = 'assets/svg/dollar-circle.svg';
  static const String splitPay = 'assets/svg/Split-Pay.svg';

//
//BottoNavigationBar svgItems
  static const String chat = 'assets/svg/messages.svg';
  static const String scan = 'assets/svg/scan2.svg';
  static const String services = 'assets/svg/Services.svg';
  static const String me = 'assets/svg/frame2.svg';

//
  final Widget settingsSvg = SvgPicture.asset(
    settings,
    semanticsLabel: 'settings Logo',
    height: 10,
    width: 10,
  );
  final Widget topUP = SvgPicture.asset(
    topUp,
    semanticsLabel: 'Top Up Logo',
    height: 20,
    width: 20,
  );
  final Widget withdrawSvg = SvgPicture.asset(
    withdraw,
    semanticsLabel: 'withdraw Logo',
    height: 20,
    width: 20,
  );
  final Widget recieveSvg = SvgPicture.asset(
    receive,
    semanticsLabel: 'Receive Logo',
    height: 20,
    width: 20,
  );
  final Widget transactionsSvg = SvgPicture.asset(
    transactions,
    semanticsLabel: 'Transactions Logo',
    height: 20,
    width: 20,
  );

  final Widget airtimesvg = SvgPicture.asset(
    airtime,
    semanticsLabel: 'Airtime Logo',
    height: 30,
    width: 30,
  );

  final Widget paybillssvg = SvgPicture.asset(
    payBills,
    semanticsLabel: 'Pay Bills Logo',
    height: 30,
    width: 30,
  );
  final Widget splitPaysvg = SvgPicture.asset(
    splitPay,
    semanticsLabel: 'Split Pay Logo',
    height: 20,
    width: 20,
  );
  final Widget chatSvg = SvgPicture.asset(
    chat,
    semanticsLabel: 'chat Logo',
    height: 20,
    width: 20,
  );
  final Widget scanSvg = SvgPicture.asset(
    scan,
    semanticsLabel: 'Scan Logo',
    height: 20,
    width: 20,
  );
  final Widget servicesSvg = SvgPicture.asset(
    services,
    semanticsLabel: 'Services Logo',
    height: 20,
    width: 20,
  );
  final Widget meSvg = SvgPicture.asset(
    me,
    semanticsLabel: 'Me Logo',
    height: 20,
    width: 20,
  );
}
