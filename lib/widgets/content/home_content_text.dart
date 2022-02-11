import 'package:provider/provider.dart';
import 'package:dtn_web/utils/page_notifier.dart';
import 'package:dtn_web/utils/utils.dart';
import 'package:dtn_web/widgets/responsive/responsive.dart';
import 'package:flutter/material.dart';

class HomeContentText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Utils.colOrange,
      padding: EdgeInsets.all(30.0),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PROFESJONALNE\nINSTALACJE',
                style: Utils.contentHeaderWhite,
              ),
              SizedBox(height: 10.0),
              Text(
                'TELETECHNICZNE\nELEKTRYCZNE\nSYSTEMY BEZPIECZEŃSTWA\nAUTOMATYKA BUDYNKOWA',
                style: Utils.contentNormalWhite,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Responsive.isDesktop(context)
              ? Row(
                  children: [
                    TextButton(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Utils.colBlue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'ZOBACZ WIĘCEJ',
                          style: Utils.contentNormalWhite,
                        ),
                      ),
                      onPressed: () =>
                          Provider.of<PageNotifier>(context, listen: false).updateIndex(2),
                    ),
                    SizedBox(width: 20.0),
                    TextButton(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Utils.colBlue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'O NAS',
                          style: Utils.contentNormalWhite,
                        ),
                      ),
                      onPressed: () =>
                          Provider.of<PageNotifier>(context, listen: false).updateIndex(1),
                    ),
                  ],
                )
              : Column(
                  children: [
                    TextButton(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Utils.colBlue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'ZOBACZ WIĘCEJ',
                          style: Utils.contentNormalWhite,
                        ),
                      ),
                      onPressed: () =>
                          Provider.of<PageNotifier>(context, listen: false).updateIndex(2),
                    ),
                    SizedBox(height: 5.0),
                    TextButton(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Utils.colBlue,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          'O NAS',
                          style: Utils.contentNormalWhite,
                        ),
                      ),
                      onPressed: () =>
                          Provider.of<PageNotifier>(context, listen: false).updateIndex(1),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
