import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/page_notifier.dart';
import '../../utils/utils.dart';
import 'nav_item.dart';

class AppBarDesktop extends StatefulWidget {
  final List<String> titles;
  final int selectedIndex;
  final Function(int) onTap;

  const AppBarDesktop({
    Key key,
    @required this.titles,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);

  @override
  _NavBarDesktopState createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<AppBarDesktop> {
  int highlightIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: Utils.colBlue,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width > Utils.pageContentWidth
                  ? Utils.pageContentWidth
                  : screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Provider.of<PageNotifier>(context, listen: false).updateIndex(0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'DTN',
                            style: Utils.logoTitleTop,
                          ),
                          Text(
                            'Digital Telecommunication Networks',
                            style: Utils.logoTitleBottom,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      NavItem(
                        index: 0,
                        selected: widget.selectedIndex == 0,
                        title: 'START',
                        onTap: widget.onTap,
                      ),
                      NavItem(
                        index: 1,
                        selected: widget.selectedIndex == 1,
                        title: 'O FIRMIE',
                        onTap: widget.onTap,
                      ),
                      NavItem(
                        index: 2,
                        selected: widget.selectedIndex == 2,
                        title: 'OFERTA',
                        onTap: widget.onTap,
                      ),
                      NavItem(
                        index: 3,
                        selected: widget.selectedIndex == 3,
                        title: 'CERTYFIKATY',
                        onTap: widget.onTap,
                      ),
                      NavItem(
                        index: 4,
                        selected: widget.selectedIndex == 4,
                        title: 'KONTAKT',
                        onTap: widget.onTap,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
