import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class ContactScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          TitleBarDesktop(
            title: 'KONTAKT',
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            width: Utils.pageContentWidth,
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ContactContentText(),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: ContactContentImage(),
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
