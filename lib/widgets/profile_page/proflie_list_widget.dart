import 'package:flutter/material.dart';
import 'package:hackfest2024_naara/models/profile_model/profile_mode.dart';

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
      top: 340,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                width: 200,
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
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
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          profile[index].title,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(height: 10),
            itemCount: profile.length,
          ),
        ),
      ),
    );
  }
}
