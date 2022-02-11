import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import '../widgets.dart';

class AboutContentImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isDesktop(context) ? 400.0 : MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Utils.imgEngineers),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
