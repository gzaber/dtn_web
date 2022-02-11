import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AboutScreenMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AboutContentText(),
                SizedBox(height: 10.0),
                AboutContentImage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
