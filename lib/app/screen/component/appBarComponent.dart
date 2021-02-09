import 'package:flutter/material.dart';

class AppBarComponent extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool isBack;

  const AppBarComponent({Key key, @required this.title, this.isBack = true})
      : super(key: key);
  @override
  _AppBarComponentState createState() => _AppBarComponentState();

  @override
  Size get preferredSize {
    return new Size.fromHeight(50.0);
  }
}

class _AppBarComponentState extends State<AppBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.black),
      ),
      centerTitle: true,
      leading: widget.isBack
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            )
          : Container(),
    );
  }
}
