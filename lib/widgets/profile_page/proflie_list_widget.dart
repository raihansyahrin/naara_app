import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/profile_model/profile_model.dart';
import 'package:hackfest2024_naara/pages/self_report_page.dart';
import 'package:hackfest2024_naara/themes/colors.dart';

class ProfileListWidget extends StatelessWidget {
  const ProfileListWidget({
    super.key,
    required this.profile,
  });

  final List<ProfileModel> profile;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      top: 390,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyForm()),
                );
              },
              child: Container(
                width: 200,
                height: 69,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: secondary, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Icon(
                            profile[index].icon,
                            size: 40,
                            color: tertiary,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          profile[index].title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: light,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 13),
          itemCount: profile.length,
        ),
      ),
    );
  }
}
