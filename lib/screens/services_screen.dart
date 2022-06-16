import 'package:flutter/material.dart';

import '../widgets/services_screen_widgets.dart';
import '../widgets/svg_widgets.dart';

class ServicesScreen extends StatelessWidget {
  ServicesScreen({Key? key}) : super(key: key);
  SvgWdgets svgFiles = SvgWdgets();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Services',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      SizedBox(
                          height: 45, width: 30, child: svgFiles.settingsSvg)
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const WalletBalanceCard(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircularComponents(
                        svg: svgFiles.topUP,
                        title: 'Top Up',
                        color: null,
                      ),
                      CircularComponents(
                        svg: svgFiles.withdrawSvg,
                        title: 'Wthdraw',
                        color: const Color.fromARGB(255, 244, 141, 109),
                      ),
                      CircularComponents(
                        svg: svgFiles.recieveSvg,
                        title: 'Received',
                        color: const Color.fromARGB(255, 19, 197, 179),
                      ),
                      CircularComponents(
                        svg: svgFiles.transactionsSvg,
                        title: 'Transactions',
                        color: const Color.fromARGB(255, 144, 37, 163),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Quick Services',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      QuickServicesCard(
                        svg: svgFiles.airtimesvg,
                        title: 'Airtime',
                      ),
                      QuickServicesCard(
                        svg: svgFiles.paybillssvg,
                        title: 'Pay Bills',
                      ),
                      QuickServicesCard(
                        svg: svgFiles.paybillssvg,
                        title: 'Split Pay ',
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        'Refer And Earn',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ReferAndEarn()
                ],
              ))),
    );
  }
}
