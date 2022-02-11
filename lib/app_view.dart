import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';
import 'utils/certificate_notifier.dart';
import 'utils/page_notifier.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class AppView extends StatefulWidget {
  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final List<Widget> _screens = [
    HomeScreen(),
    AboutScreen(),
    OfferScreen(),
    CertificatesScreen(),
    ContactScreen(),
  ];

  final List<String> _pageTitles = Utils.screenTitles;

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    _selectedIndex = Provider.of<PageNotifier>(context).index;

    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? PreferredSize(
              preferredSize: Size(screenSize.width, Utils.appBarDesktopHeight),
              child: AppBarDesktop(
                titles: _pageTitles,
                selectedIndex: _selectedIndex,
                onTap: (index) {
                  context.read<CertificateNotifier>().updateIndex(Utils.defaultCertificateIndex);
                  Provider.of<PageNotifier>(context, listen: false).updateIndex(index);
                },
              ),
            )
          : PreferredSize(
              child: AppBarMobile(
                title: _pageTitles[_selectedIndex],
              ),
              preferredSize: Size(screenSize.width, Utils.appBarMobileHeight),
            ),
      drawer: Responsive.isDesktop(context) ? null : DrawerMobile(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: !Responsive.isDesktop(context)
          ? BottomNavBarMobile(
              icons: Utils.screenIcons,
              titles: _pageTitles,
              selectedIndex: _selectedIndex,
              onTap: (index) {
                context.read<CertificateNotifier>().updateIndex(Utils.defaultCertificateIndex);
                Provider.of<PageNotifier>(context, listen: false).updateIndex(index);
              },
            )
          : const SizedBox.shrink(),
    );
  }
}
