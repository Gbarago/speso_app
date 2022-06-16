import 'package:flutter/material.dart';
import 'package:speso_test/screens/services_screen.dart';

import '../widgets/svg_widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

SvgWdgets svgWdgets = SvgWdgets();
int _selectedIndex = 2;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = <Widget>[
      Container(),
      Container(),
      ServicesScreen(),
      Container(),
    ];

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(color: Colors.black),
            unselectedLabelStyle:
                const TextStyle(color: Colors.black, fontSize: 10),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Container(child: svgWdgets.chatSvg), label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Container(child: svgWdgets.scanSvg), label: 'Scan'),
              BottomNavigationBarItem(
                  icon: Container(child: svgWdgets.servicesSvg),
                  label: 'Services'),
              BottomNavigationBarItem(
                  icon: Container(child: svgWdgets.meSvg), label: 'Me'),
            ]),
        body: IndexedStack(
          index: _selectedIndex,
          children: screens,
        ));
  }
}
