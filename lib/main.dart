import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_view.dart';
import 'utils/certificate_notifier.dart';
import 'utils/page_notifier.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: PageNotifier()),
        ChangeNotifierProvider.value(value: CertificateNotifier()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DTN Digital Telecommunication Networks',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AppView(),
    );
  }
}
