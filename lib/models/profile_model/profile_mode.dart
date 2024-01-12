import 'package:flutter/material.dart';

class ProfileModel {
  int id;
  IconData icon;
  String title;

  ProfileModel({
    required this.id,
    required this.icon,
    required this.title,
  });

  static List<ProfileModel> getProfile() {
    List<ProfileModel> profile = [];

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.person_2_rounded,
        title: 'Edit Profile',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.notifications_on_rounded,
        title: 'Notification',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.storage_rounded,
        title: 'Storage and Data',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.help_rounded,
        title: 'Help',
      ),
    );

    return profile;
  }
}
