import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class BottomNavBarMobile extends StatelessWidget {
  final List<IconData> icons;
  final List<String> titles;
  final Function(int) onTap;
  final int selectedIndex;

  const BottomNavBarMobile({
    Key key,
    @required this.icons,
    @required this.titles,
    @required this.onTap,
    @required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Utils.colBlue,
      selectedItemColor: Utils.colOrange,
      unselectedItemColor: Utils.colWhite,
      selectedFontSize: 10.0,
      unselectedFontSize: 10.0,
      currentIndex: selectedIndex,
      onTap: onTap,
      items: [
        for (int i = 0; i < titles.length; i++)
          BottomNavigationBarItem(
            icon: Icon(icons[i]),
            label: titles[i],
          ),
      ],
    );
  }
}
