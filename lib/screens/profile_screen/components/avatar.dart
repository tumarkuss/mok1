import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  ProfileAvatar(String avatar_url, {super.key});

  late String profilePictureUrl = profilePictureUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 50,
            height: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                profilePictureUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          );
  }
}