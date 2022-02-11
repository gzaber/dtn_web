import 'package:flutter/material.dart';

import 'interactive_nav_item.dart';

class NavItem extends StatelessWidget {
  final int index;
  final String title;
  final bool selected;
  final Function(int) onTap;

  const NavItem({
    Key key,
    @required this.index,
    @required this.title,
    @required this.selected,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: InteractiveNavItem(
        text: title,
        selected: selected,
      ),
    );
  }
}
