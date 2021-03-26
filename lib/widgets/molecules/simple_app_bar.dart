import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';

class SimpleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBar({required this.title, this.leading});
  final Widget? leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: leading,
      title: Text(
        title,
        style: OnlyliveTheme.appbarTitleStyle,
      ),
      centerTitle: true,
      elevation: 0.4,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
