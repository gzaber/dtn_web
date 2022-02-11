import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

import '../../utils/utils.dart';

class InteractiveNavItem extends MouseRegion {
  static final appContainer = html.window.document.querySelectorAll('flt-glass-pane')[0];

  InteractiveNavItem({Widget child, String text, String routeName, bool selected})
      : super(
          onHover: (PointerHoverEvent evt) {
            appContainer.style.color = Utils.colOrange.toString();
            appContainer.style.cursor = 'pointer';
          },
          onExit: (PointerExitEvent evt) {
            appContainer.style.color = Utils.colBlue.toString();
            appContainer.style.cursor = 'default';
          },
          child: InteractiveItem(
            text: text,
            selected: selected,
          ),
        );
}

class InteractiveItem extends StatefulWidget {
  final String text;
  final bool selected;

  const InteractiveItem({
    Key key,
    @required this.text,
    this.selected,
  }) : super(key: key);

  @override
  _InteractiveItemState createState() => _InteractiveItemState();
}

class _InteractiveItemState extends State<InteractiveItem> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => _hovered(true),
      onExit: (_) => _hovered(false),
      child: Container(
        height: double.infinity,
        color: (_hovering || widget.selected) ? Utils.colOrange : Utils.colBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Center(
            child: Text(
              widget.text,
              style: Utils.navItem,
            ),
          ),
        ),
      ),
    );
  }

  _hovered(bool hovered) {
    setState(() {
      _hovering = hovered;
    });
  }
}
