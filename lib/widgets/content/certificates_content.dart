import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../utils/certificate_notifier.dart';
import '../../utils/utils.dart';

class CertificatesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int _certificateIndex = Provider.of<CertificateNotifier>(context).index;

    return _certificateIndex == Utils.defaultCertificateIndex
        ? Container(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 40.0,
              itemCount: Utils.certificates.length,
              itemBuilder: (BuildContext context, int index) => InkWell(
                child: Image.asset(Utils.certificates[index]),
                onTap: () {
                  Provider.of<CertificateNotifier>(context, listen: false).updateIndex(index);
                },
              ),
              staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: Utils.colBlue,
                onPressed: () {
                  Provider.of<CertificateNotifier>(context, listen: false)
                      .updateIndex(Utils.defaultCertificateIndex);
                },
              ),
              SizedBox(height: 10.0),
              Image.asset(Utils.certificates[_certificateIndex]),
            ],
          );
  }
}
