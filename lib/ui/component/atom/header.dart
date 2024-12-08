import 'package:flutter/material.dart';

class Header extends AppBar {
  Header({
    Key? key,
    required String title,
    List<Widget>? actions,
  }) : super(
          key: key,
          title: Center(child: Text(title)),
          actions: actions,
        );
}
