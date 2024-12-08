import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_template/model/user/user.dart';
import 'package:flutter_template/ui/component/atom/custom_button.dart';

class EditProfileForm extends HookWidget {
  final TextEditingController usernameController;
  final TextEditingController displayNameController;
  final VoidCallback onSave;

  EditProfileForm({
    super.key,
    required this.usernameController,
    required this.displayNameController,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: usernameController,
          decoration: const InputDecoration(labelText: 'Username'),
        ),
        TextField(
          controller: displayNameController,
          decoration: const InputDecoration(labelText: 'Display Name'),
        ),
        CustomButton(label: 'Save', onPressed: onSave),
      ],
    );
  }
}
