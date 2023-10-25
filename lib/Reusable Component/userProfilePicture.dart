import 'package:flutter/material.dart';
import 'package:grocery_store/main.dart';

class UserProfilePicture extends StatelessWidget {
  final String imagePath;
  final bool editable;

  UserProfilePicture({
    required this.imagePath,
    this.editable = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Circular profile picture
        ClipOval(
          child: Image.network(
            imagePath,
            fit: BoxFit.cover,
            // alignment: AlignmentDirectional.topEnd,
          ),
        ),
        // Edit icon (optional)
        if (editable)
          Positioned(
            bottom: 20,
            right: 10,
            child: GestureDetector(
              onTap: () {
                // Add your edit profile picture logic here
                // This can be a dialog to choose a new image, for example
                print('Edit Profile Picture');
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: kLightGreen)),
                child: const Icon(
                  Icons.edit,
                  size: 10,
                  color: kLightGreen,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
