import 'package:flutter/material.dart';
import 'package:flutter_template/ui/component/atom/custom_text.dart';

class UserInfoSection extends StatelessWidget {
  final String username;
  final String displayName;

  const UserInfoSection({
    Key? key,
    required this.username,
    required this.displayName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: 'Username: $username'),
        CustomText(text: 'Display Name: $displayName'),
      ],
    );
  }
}
