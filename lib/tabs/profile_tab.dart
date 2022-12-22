import 'package:flutter/material.dart';

import '../theme/constant.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        body: Center(
            child: Text(
          "Profile Tab",
          style: Constant.profileText,
        )));
  }
}
