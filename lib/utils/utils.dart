import 'package:flutter/material.dart';

class Utils {

  static const List<String> screenTitles = const [
    'START',
    'O FIRMIE',
    'OFERTA',
    'CERTYFIKATY',
    'KONTAKT',
  ];

  static const List<IconData> screenIcons = const [
    Icons.home_outlined,
    Icons.info_outline,
    Icons.local_offer_outlined,
    Icons.book_outlined,
    Icons.email_outlined,
  ];

  // colors
  static const Color colBlue = Color(0xFF00315C);
  static const Color colOrange = Color(0xFFF27420);
  static const Color colWhite = Color(0xFFFFFFFF);

  // page content width
  static const double pageContentWidth = 1000.0;

  static const double appBarMobileHeight = 80.0;
  static const double appBarDesktopHeight = 80.0;

  static const int defaultCertificateIndex = 666;

  // images
  static const String _images = 'assets/images/';

  static const String imgElectronics = '${_images}electronics.jpg';
  static const String imgEngineers = '${_images}engineers.jpg';
  static const String imgPhone = '${_images}phone.jpg';
  static const String imgRack = '${_images}rack.jpg';
  static const String imgServer = '${_images}server.jpg';

  // certificates
  static const String _certificatesPath = 'assets/images/certificates/';

  static const String certAlantecDg = '${_certificatesPath}alantec_dg.png';
  static const String certAlantecGz = '${_certificatesPath}alantec_gz.png';
  static const String certIntersell = '${_certificatesPath}intersell.jpg';
  static const String certRdmFreenet = '${_certificatesPath}rdm_freenet.png';
  static const String certRdmIPhy = '${_certificatesPath}rdm_iphy.png';
  static const String certVersivCopper =
      '${_certificatesPath}versiv_copper.jpg';
  static const String certVersivFiber = '${_certificatesPath}versiv_fiber.jpg';

  static const List<String> certificates = [
    '${_certificatesPath}versiv_copper.jpg',
    '${_certificatesPath}versiv_fiber.jpg',
    '${_certificatesPath}intersell.jpg',
    '${_certificatesPath}alantec_dg.png',
    '${_certificatesPath}alantec_gz.png',
    '${_certificatesPath}rdm_iphy.png',
    '${_certificatesPath}rdm_freenet.png',
  ];

  // text styles
  static const String fontFamily = 'Lato';

  // page title
  static const TextStyle pageTitle = TextStyle(
    color: colWhite,
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle pageTitleMobile = TextStyle(
    color: colWhite,
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle pageTitleDtn = TextStyle(
    color: colOrange,
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  // home page title
  static const TextStyle homePageTitleTop = TextStyle(
    color: colOrange,
    fontSize: 36.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle homePageTitleBottom = TextStyle(
    color: colWhite,
    fontSize: 26.0,
    fontFamily: fontFamily,
  );

  // nav item
  static const TextStyle navItem = TextStyle(
    color: Utils.colWhite,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  // logo title
  static const TextStyle logoTitleTop = TextStyle(
    color: colOrange,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle logoTitleBottom = TextStyle(
    color: colWhite,
    fontSize: 16.0,
    fontFamily: fontFamily,
  );

  // footer
  static const TextStyle footerContentWhite = TextStyle(
    color: colWhite,
    fontSize: 14.0,
    fontFamily: fontFamily,
  );

  static const TextStyle footerContentOrange = TextStyle(
    color: colOrange,
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  // content
  static const TextStyle contentHeader = TextStyle(
    color: colBlue,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle contentHeaderWhite = TextStyle(
    color: colWhite,
    fontSize: 28.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );

  static const TextStyle contentNormal = TextStyle(
    color: colBlue,
    fontSize: 18.0,
    fontFamily: fontFamily,
  );

  static const TextStyle contentNormalOrange = TextStyle(
    color: colOrange,
    fontSize: 18.0,
    fontFamily: fontFamily,
  );

  static const TextStyle contentNormalWhite = TextStyle(
    color: colWhite,
    fontSize: 18.0,
    fontFamily: fontFamily,
  );

  static const TextStyle contentBold = TextStyle(
    color: colBlue,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );
}
