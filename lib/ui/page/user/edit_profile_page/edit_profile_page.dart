import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_template/ui/component/organism/user/edit_profile_form.dart';
import 'package:flutter_template/ui/component/template/profile_template.dart';
import 'package:flutter_template/ui/page/user/edit_profile_page/edit_profile_page_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditProfilePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(EditProfilePageController.provider);
    final controller = ref.read(EditProfilePageController.provider.notifier);

    useEffect(() {
      controller.init();
      return null;
    }, []);

    return ProfileTemplate(
      title: 'Edit Profile',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.user == null
            ? const CircularProgressIndicator()
            : EditProfileForm(
                usernameController: controller.usernameController,
                displayNameController: controller.displayNameController,
                onSave: () {
                  controller.saveProfile(context: context);
                }),
      ),
    );
  }
}
