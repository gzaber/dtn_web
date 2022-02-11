import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class AboutScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          TitleBarDesktop(
            title: 'O FIRMIE',
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            width: Utils.pageContentWidth,
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: AboutContentText(),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: AboutContentImage(),
                ),
              ],
            ),
          ),
          FooterDesktop(),
        ],
      ),
    );
  }
}
