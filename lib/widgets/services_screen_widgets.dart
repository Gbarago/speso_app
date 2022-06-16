import 'package:flutter/material.dart';

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          width: double.infinity,
          height: h * 0.2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/wallet_banner.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          left: w * 0.08,
          top: h * 0.05,
          child: const Text(
            'Wallet\nBalace',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        Positioned(
          left: w * 0.08,
          top: h * 0.13,
          child: const Text(
            'N 40,0000.00',
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 22, color: Colors.white),
          ),
        )
      ],
    );
  }
}

class CircularComponents extends StatelessWidget {
  const CircularComponents(
      {Key? key, required this.color, required this.svg, required this.title})
      : super(key: key);
  final Color? color;
  final Widget svg;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: color ?? Colors.blueAccent,
          child: svg,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

class QuickServicesCard extends StatelessWidget {
  const QuickServicesCard({Key? key, required this.title, required this.svg})
      : super(key: key);
  final String title;
  final Widget svg;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.12,
      width: w * 0.27,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: svg,
          ),
          Text(title),
        ],
      ),
    );
  }
}

class ReferAndEarn extends StatelessWidget {
  const ReferAndEarn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.purple,
          ),
          width: double.infinity,
          height: h * 0.18,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/wallet_banner.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned(
          left: w * 0.08,
          top: h * 0.03,
          child: RichText(
            text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Refer a ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  TextSpan(
                    text: 'Friend\n',
                    style: TextStyle(fontSize: 15, color: Colors.yellow),
                  ),
                  TextSpan(
                    text: 'Earn Etra Cash\n',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ]),
          ),
        ),
        Positioned(
            left: w * 0.08,
            top: h * 0.1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              width: w * 0.3,
              height: h * 0.04,
              child: MaterialButton(
                child: const Text(
                  'Get Started',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  print('Refer and earn');
                },
              ),
            ))
      ],
    );
  }
}
