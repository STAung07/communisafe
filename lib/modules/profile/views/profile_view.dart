import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../components/info_row.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: <Widget>[
              buildProfileImage(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '@${controller.username.value}',
                  style: const TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              InfoRow(
                content: controller.email.value,
                iconData: Icons.email,
                rowColor: const Color(0xffEBBE4A),
                execute: () => {},
              ),
              InfoRow(
                content: controller.address.value,
                iconData: Icons.house,
                rowColor: const Color(0xff4ECB71),
                execute: () => {},
              ),
              InfoRow(
                  content: controller.communityArea.value,
                  iconData: Icons.people,
                  rowColor: const Color(0xff6D0157),
                  execute: () => {}),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildProfileImage() => const CircleAvatar(
      radius: 144 / 2,
      backgroundColor: Colors.white,
      backgroundImage: NetworkImage(
          'https://cdn.pixabay.com/photo/2013/07/13/12/07/avatar-159236__340.png'),
    );
