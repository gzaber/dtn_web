import 'package:flutter/material.dart';

import '../widgets/responsive/responsive.dart';
import 'screens.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: ContactScreenDesktop(),
      mobile: ContactScreenMobile(),
    );
  }
}
