import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/certificate_notifier.dart';
import '../../utils/page_notifier.dart';
import '../../utils/utils.dart';

class CustomDrawerItem extends StatelessWidget {
  final int itemIndex;

  const CustomDrawerItem({
    Key key,
    @required this.itemIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int screenIndex = Provider.of<PageNotifier>(context).index;

    return InkWell(
      onTap: () {
        context.read<CertificateNotifier>().updateIndex(Utils.defaultCertificateIndex);
        Provider.of<PageNotifier>(context, listen: false).updateIndex(itemIndex);
        Navigator.pop(context);
      },
      child: ListTile(
        leading: Icon(
          Utils.screenIcons[itemIndex],
          size: 25.0,
          color: itemIndex == screenIndex ? Utils.colOrange : Utils.colBlue,
        ),
        title: Text(
          Utils.screenTitles[itemIndex],
          style: itemIndex == screenIndex ? Utils.contentNormalOrange : Utils.contentNormal,
        ),
      ),
    );
  }
}
