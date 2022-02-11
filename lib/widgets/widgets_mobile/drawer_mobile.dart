import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class DrawerMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Utils.colBlue,
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DTN',
                    style: Utils.pageTitleDtn,
                  ),
                  Text(
                    'Digital Telecommunication Networks',
                    style: Utils.logoTitleBottom,
                  ),
                ],
              ),
            ),
          ),
          for (int i = 0; i < Utils.screenTitles.length; i++) CustomDrawerItem(itemIndex: i),
        ],
      ),
    );
  }
}
