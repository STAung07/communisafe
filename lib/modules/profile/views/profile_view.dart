import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Center(
          child: Column(
              children: <Widget>[
                const SizedBox(height: 50),
                CircleAvatar(
                  radius: 144/2,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2013/07/13/12/07/avatar-159236__340.png'
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                    '@samsemestreet',
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)
                )
              ]
          )
      )
    );
  }

  Widget buildProfileImage() => CircleAvatar(
    radius: 144/2,
    backgroundColor: Colors.white,
    backgroundImage: NetworkImage(
        'https://cdn.pixabay.com/photo/2013/07/13/12/07/avatar-159236__340.png'
    ),
  );
}

