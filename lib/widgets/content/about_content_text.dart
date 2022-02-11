import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class AboutContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.colWhite,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'O FIRMIE',
            style: Utils.contentHeader,
          ),
          SizedBox(height: 20.0),
          Text(
              'Firma DTN Digital Telecommunication Networks powstała na bazie wieloletniego doświadczenia w branży instalacyjnej.',
              style: Utils.contentBold),
          SizedBox(height: 20.0),
          Text(
            'Wykonujemy instalacje dla wielu generalnych wykonawców w różnych sektorach budownictwa.',
            style: Utils.contentNormal,
          ),
          SizedBox(height: 20.0),
          Text(
            'Naszą specjalnością są\n- instalacje teletechniczne\n- instalacje systemów bezpieczeństwa\n- instalacje automatyki budynkowej\n- instalacje elektryczne',
            style: Utils.contentNormal,
          ),
        ],
      ),
    );
  }
}
