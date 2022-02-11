import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class OfferContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.colWhite,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OFERTA',
            style: Utils.contentHeader,
          ),
          SizedBox(height: 20.0),
          Text(
            'Firma DTN Digital Telecommunication Networks specjalizuje się w następujących instalacjach:',
            style: Utils.contentBold,
          ),
          SizedBox(height: 20.0),
          Text(
            '- okablowanie miedziane i światłowodowe\n- systemy sygnalizacji pożaru\n- dźwiękowy system ostrzegawczy\n- system sygnalizacji włamania i napadu\n- system kontroli dostępu\n- system telewizji dozorowej\n- system automatyki budynkowej\n- system audio-video\n- instalacje elektryczne',
            style: Utils.contentNormal,
          ),
        ],
      ),
    );
  }
}
