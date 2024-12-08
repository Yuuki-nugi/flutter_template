import 'package:flutter/material.dart';
import 'package:flutter_template/ui/component/atom/header.dart';

class ProfileTemplate extends StatelessWidget {
  const ProfileTemplate({Key? key, required this.title, required this.body})
      : super(key: key);
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Header(title: title), body: Center(child: body));
  }
}
