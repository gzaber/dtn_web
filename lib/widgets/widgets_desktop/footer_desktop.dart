import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class FooterDesktop extends StatelessWidget {
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
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              width: screenSize.width > Utils.pageContentWidth
                  ? Utils.pageContentWidth
                  : screenSize.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Digital Telecommunication Networks',
                        style: Utils.footerContentOrange,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '"DTN" Dariusz Gałaś',
                        style: Utils.footerContentOrange,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'ul. Działy 9',
                        style: Utils.footerContentWhite,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '32-031 Mogilany',
                        style: Utils.footerContentWhite,
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          Text(
                            'NIP: ',
                            style: Utils.footerContentOrange,
                          ),
                          Text('9442135345', style: Utils.footerContentWhite),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Telefon:',
                        style: Utils.footerContentOrange,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        '507-826-708',
                        style: Utils.footerContentWhite,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'Email:',
                        style: Utils.footerContentOrange,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        'biuro@dtn.com.pl',
                        style: Utils.footerContentWhite,
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
