import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/page_notifier.dart';
import '../../utils/utils.dart';

class AppBarMobile extends StatelessWidget {
  final String title;
  final double appBarHeight = Utils.appBarMobileHeight;

  const AppBarMobile({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: appBarHeight,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/server.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: appBarHeight,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                height: appBarHeight,
                child: title == 'START'
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                      )
                    : Stack(
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(title, style: Utils.pageTitleMobile),
                              ],
                            ),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  child: Text('DTN', style: Utils.pageTitleDtn),
                                  onPressed: () => Provider.of<PageNotifier>(context, listen: false)
                                      .updateIndex(0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: appBarHeight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      padding: EdgeInsets.only(right: 10.0),
                      icon: Icon(Icons.menu),
                      iconSize: 36,
                      color: Colors.white,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
