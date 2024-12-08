import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/ui/component/molecule/user/user_info_section.dart';
import 'package:flutter_template/ui/component/template/profile_template.dart';
import 'package:flutter_template/ui/page/user/edit_profile_page/edit_profile_page.dart';
import 'package:flutter_template/ui/page/user/profile_page/profile_page_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(ProfilePageController.provider);
    final controller = ref.read(ProfilePageController.provider.notifier);

    useEffect(() {
      controller.fetchUser('1');
      return null;
    }, []);

    return ProfileTemplate(
      title: 'Profile',
      body: Column(
        children: [
          UserInfoSection(
            username: state.user?.username ?? '',
            displayName: state.user?.display_name ?? '',
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditProfilePage(),
                ),
              );
            },
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
