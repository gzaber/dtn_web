import 'package:flutter/material.dart';

import '../widgets/responsive/responsive.dart';
import 'screens.dart';

class CertificatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: CertificatesScreenDesktop(),
      mobile: CertificatesScreenMobile(),
    );
  }
}
