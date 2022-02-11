import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class TitleBarDesktop extends StatelessWidget {
  final String title;
  final double titleBarHeight = 200.0;

  const TitleBarDesktop({
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
                height: titleBarHeight,
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
                height: titleBarHeight,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: titleBarHeight,
                child: Center(
                  child: title == null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DTN',
                              style: Utils.homePageTitleTop,
                            ),
                            Text(
                              'Digital Telecommunication Networks',
                              style: Utils.homePageTitleBottom,
                            ),
                          ],
                        )
                      : Text(
                          title,
                          style: Utils.pageTitle,
                        ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
