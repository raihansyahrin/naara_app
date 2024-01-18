import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/profile_model/profile_model.dart';
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
      top: 360,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: 200,
                height: 69,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: secondary, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: Icon(
                            profile[index].icon,
                            size: 40,
                            color: tertiary,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          profile[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: light,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 13),
            itemCount: profile.length,
          ),
        ),
      ),
    );
  }
}
