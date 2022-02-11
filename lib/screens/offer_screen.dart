import 'package:flutter/material.dart';

import '../widgets/responsive/responsive.dart';
import 'screens.dart';

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: OfferScreenDesktop(),
      mobile: OfferScreenMobile(),
    );
  }
}
