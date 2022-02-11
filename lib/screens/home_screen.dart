import 'package:flutter/material.dart';

import '../widgets/responsive/responsive.dart';
import 'screens.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: HomeScreenDesktop(),
      mobile: HomeScreenMobile(),
    );
  }
}
