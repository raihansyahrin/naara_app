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
        icon: Icons.settings_rounded,
        title: 'Settings',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.language_rounded,
        title: 'Language',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.dark_mode_rounded,
        title: 'Dark Mode',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icons.logout_rounded,
        title: 'Sign Out',
      ),
    );

    return profile;
  }
}
