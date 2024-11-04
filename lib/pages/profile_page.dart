import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackfest2024_naara/models/profile_model/profile_model.dart';
import 'package:hackfest2024_naara/themes/colors.dart';
import 'package:hackfest2024_naara/widgets/profile_page/proflie_list_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<ProfileModel> profile = [];
  File? _profileImage;

  void initModel() {
    profile = ProfileModel.getProfile();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    initModel();
    return Scaffold(
      body: ColorfulSafeArea(
        topColor: secondary,
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  color: secondary,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                ),
                Positioned.fill(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 200,
                  child: Container(
                    height: 340,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                      color: light,
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: _profileImage != null
                          ? FileImage(_profileImage!)
                          : const AssetImage(
                                  'assets/images/profile-picture.png')
                              as ImageProvider,
                    ),
                  ),
                ),
                Positioned(
                  top: 220,
                  left: 80,
                  right: 0,
                  child: InkWell(
                    onTap: () {
                      _showImagePicker(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(7),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: const Icon(
                        Icons.edit,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 290,
                  child: Column(
                    children: [
                      Text(
                        'MUHAMAD RAIHAN S. S.',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1301213257 | IF-45-03',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF3A4243),
                        ),
                      ),
                    ],
                  ),
                ),
                ProfileListWidget(profile: profile),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Gallery'),
              onTap: () {
                _pickImage(ImageSource.gallery);
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('Camera'),
              onTap: () {
                _pickImage(ImageSource.camera);
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:colorful_safe_area/colorful_safe_area.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hackfest2024_naara/models/profile_model/profile_model.dart';
// import 'package:hackfest2024_naara/themes/colors.dart';
// import 'package:hackfest2024_naara/widgets/profile_page/proflie_list_widget.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   List<ProfileModel> profile = [];

//   void initModel() {
//     profile = ProfileModel.getProfile();
//   }

//   @override
//   Widget build(BuildContext context) {
//     initModel();
//     return Scaffold(
//       body: ColorfulSafeArea(
//         topColor: secondary,
//         child: ListView(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   color: secondary,
//                   width: double.infinity,
//                   height: MediaQuery.of(context).size.height,
//                 ),
//                 Positioned.fill(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   top: 200,
//                   child: Container(
//                     height: 340,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(100),
//                         topRight: Radius.circular(100),
//                       ),
//                       color: light,
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 140,
//                   left: 0,
//                   right: 0,
//                   child: Container(
//                     alignment: Alignment.center,
//                     child: const CircleAvatar(
//                       radius: 60,
//                       backgroundImage: AssetImage(
//                         'assets/images/profile-picture.png',
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 0,
//                   left: 0,
//                   right: 0,
//                   top: 290,
//                   child: Column(
//                     children: [
//                       Text(
//                         'MUHAMAD RAIHAN S. S.',
//                         style: GoogleFonts.poppins(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         '1301213257 | IF-45-03',
//                         style: GoogleFonts.poppins(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: const Color(0xFF3A4243),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 ProfileListWidget(profile: profile),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
