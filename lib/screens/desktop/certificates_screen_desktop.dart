import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../../widgets/widgets.dart';

class CertificatesScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Column(
        children: [
          TitleBarDesktop(
            title: 'CERTYFIKATY',
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            width: Utils.pageContentWidth,
            alignment: Alignment.center,
            child: CertificatesContent(),
          ),
          FooterDesktop(),
        ],
      ),
    );
  }
}
