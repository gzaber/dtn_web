import 'package:flutter/material.dart';

import '../widgets/responsive/responsive.dart';
import 'screens.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: AboutScreenDesktop(),
      mobile: AboutScreenMobile(),
    );
  }
}
