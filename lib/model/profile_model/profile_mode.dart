import 'package:flutter/material.dart';

class ProfileModel {
  int id;
  Icon icon;
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
        icon: Icon(Icons.settings_rounded),
        title: 'Settings',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icon(Icons.language_rounded),
        title: 'Language',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icon(Icons.dark_mode_rounded),
        title: 'Dark Mode',
      ),
    );

    profile.add(
      ProfileModel(
        id: 0,
        icon: Icon(Icons.logout_rounded),
        title: 'Sign Out',
      ),
    );

    return profile;
  }
}
