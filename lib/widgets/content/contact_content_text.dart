import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class ContactContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.colWhite,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'KONTAKT',
            style: Utils.contentHeader,
          ),
          SizedBox(height: 20.0),
          Text(
            'DIGITAL TELECOMMUNICATION NETWORKS\n"DTN" Dariusz Gałaś',
            style: Utils.contentBold,
          ),
          SizedBox(height: 20.0),
          Text(
            'ul.Działy 9\n32-031 Mogilany',
            style: Utils.contentNormal,
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                'NIP: ',
                style: Utils.contentBold,
              ),
              Text(
                '9442135345',
                style: Utils.contentNormal,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                'Telefon: ',
                style: Utils.contentBold,
              ),
              Text(
                '507-826-708',
                style: Utils.contentNormal,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Text(
                'Email: ',
                style: Utils.contentBold,
              ),
              Text(
                'biuro@dtn.com.pl',
                style: Utils.contentNormal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
